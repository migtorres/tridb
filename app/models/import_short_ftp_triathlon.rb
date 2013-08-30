class ImportShortFtpTriathlon < ActiveRecord::Base
  require 'open-uri'
  require 'pdf-reader'

  def self.import_from_url(url, import_results_from_url_id)
    #io = open(url)
    #@reader = PDF::Reader.new(io)
    @reader = PDF::Reader.new(url)
    @page_number = @reader.page_count
    @import_results_from_url_id = import_results_from_url_id
    ImportShortFtpTriathlon.short_ftp_triathlon(@page_number,@reader)
  end


  private



  def self.create_result(result)
    ImportShortFtpTriathlon.create(result)
  end


  def self.get_last_results(result, split_array, break_point)
    if ["DQ","DNF", "DNS"].include? result[:pen]
    else      
      if split_array[break_point+2..-1].count == 6 || result[:place] == 1
        result[:swimming_time] = split_array[break_point+1..-1][0]
        result[:cycling_position] = split_array[break_point+1..-1][1].to_i
        result[:cycling_time] = split_array[break_point+1..-1][2]
        result[:running_position] = split_array[break_point+1..-1][3].to_i
        result[:running_time] = split_array[break_point+1..-1][4]
      end
      if result[:place] == 1
        result[:race_time] = split_array[-1]
      else
        result[:race_time] = split_array[-2]
      end
    end

    create_result(result)
  end

  def self.get_team_and_swimming_position_dnf(result, split_array,break_point)
    result[:age_group_name] = split_array[break_point]
    team = ""
    split_array[break_point+1..-1].each{ |value|
      break if value == '-' || value.match(':')
        team << value + " "
          }
    result[:team] = team[0..-2]

    create_result(result)
  end

  def self.get_team_and_swimming_position(result, split_array,break_point)
    result[:age_group_name] = split_array[break_point]
    team = ""
    split_array[break_point+1..-1].each{ |value|
      if value.to_i != 0 && split_array[break_point + 2].match(":")
        result[:swimming_position] = value.to_i
        result[:team] = team[0..-2]
        break_point += 1
        break
      else
        team << value + " "
        break_point +=  1
      end
          }
    get_last_results(result, split_array, break_point)

  end
=begin
  def get_incomplete_results
    result[:running_time] = x[-26..-19]
    result[:running_position] = x[-31..-27].to_i
    result[:cycling_time] = x[-42..-33]
    result[:cycling_position] = x[-45..-42].to_i
    result[:running_time] = x[-55..-46].to_i
    result[:running_position] = x[-60..-56]
  end
=end

  def self.get_name_and_pen(result, split_array, break_point)
    athlete_name = ""
    split_array[break_point..-1].each{ |value|
      if ["-", "DQ", "DNF", "DNS"].include? value
        result[:pen] = value
        result[:athlete_name] = athlete_name[0..-2]
        break_point +=1
        break
      else
        athlete_name << value + " "
        break_point += 1
      end
    }
    
  if ["-", "DQ"].include? result[:pen]
    get_team_and_swimming_position(result, split_array,break_point)
  else
    get_team_and_swimming_position_dnf(result, split_array,break_point)
  end
  end

  def self.get_place_numbers(split_array)

    result = {}
    if split_array[2].to_i == 0
      break_point = 0 
    else
      break_point = 1
      result[:place] = split_array[0].to_i
    end

    result[:ftp_number] = split_array[break_point].to_i
    result[:ftp_license] = split_array[break_point + 1].to_i
    break_point += 2
    get_name_and_pen(result, split_array, break_point)
  end





  def self.short_ftp_triathlon(page_number,reader)
    #@import_results_from_url_id = import_results_from_url_id
    page = 1	
    while page < page_number+1 do
      clean_array = reader.page(page).text.split("\n").select { |z| z != ""}[6..-2]
      clean_array.each { |x|
        split_array = x.split
        get_place_numbers(split_array)

      }
      page += 1
    end
  end


  def get_triathlon_info(reader)
    info_array = reader.page(page).text.split("\n").select { |z| z != ""}[0..5]
    triathlon_info = {:title => info_array[0], # Ver sintaxe
                   :date => info_array[1].split[1],
                   :time => info_array[1].split[3],
                   :city => info_array[1].split[5],
                   :swimming_distance => info_array[2].split[1],
                   :cycling_distance => info_array[1].split[4],
                   :running_distance => info_array[1].split[7]
    }

  end
end
