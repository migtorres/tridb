class ImportResultsFromUrl < ActiveRecord::Base
  belongs_to :race_types
  belongs_to :competitions
  belongs_to :global_races
  validates_uniqueness_of :url
  has_many :import_short_ftp_triathlon, dependent: :destroy
  before_create :import_from_url

  def create
    @import_results_from_url_params = ImportResultsFromUrl.create(import_results_from_url_params)
  end

  def import_from_url
    @import_type = import_type
    @url = url
    @id = id
    if @import_type == 'short_ftp_triathlon'
      ImportShortFtpTriathlon.import_from_url(@url,@id)
    elsif @import_type == 'long_ftp_triathlon'
      ImportLongFtpTriathlon.import_from_url(@url)
    else
      #ImportZeroFtpTriathlon.import_from_url(@url)
    end
  end
  private

  def validate_url
    begin
      uri = URI.parse(self.url)
      uri.kind_of?(URI::HTTP)
    rescue URI::InvalidURIError
      self.errors.add(:url, "does not appear to be valid")
    end
  end

end
