require 'pdf-reader'



class Import

  def initialize(pdf_file)
    @reader = PDF::Reader.new(pdf_file)
  end

  def get_page_number
   reader.page_count
  end


  def short_ftp_triathlon(page_number)
  results_all_array = []
       page = 1	
    while page < page_number+1 do
     results_array = []
   clean_array = reader.page(page).text.split("\n").select { |z| z != ""}[6..100]
   clean_array.each { |x|
 results_array=[
     #place:
     x[0..2].to_i,
     #ftp_number
     x[3..6].to_i,
  #ftp_lic:
  x[8..11].to_i,
  #athlete_name:
  x[12..43],
  #pen:
  x[44..49],
  #age_group:
  x[50..56],
  #team:
  x[57..94],
  #swimming_position:
  x[95..200].split(" ")[0].to_i,
  #swimming_time:
  x[95..200].split(" ")[1],
  #cycling_position:
  x[95..200].split(" ")[2].to_i,
  #cycling_time:
  x[95..200].split(" ")[3],
  #running_position:
  x[95..200].split(" ")[4].to_i,
  #running_time:
  x[95..200].split(" ")[5],
  #race_time:
  x[95..200].split(" ")[6],
]
          
      results_all_array << results_array}
      page += 1
      
   end

results_all_array.each do |x|
 if x[0] != 0
   ImportShortFtpTriathlon.create({:place => x[0],
  :ftp_number => x[1],
  :ftp_license => x[2],
  :athlete_name => x[3].strip,
  :pen => x[4].strip,
  :age_group_name => x[5].strip,
  :team => x[6].strip ,
  :swimming_position => x[7],
  :swimming_time => x[8],
  :cycling_position => x[9],
  :cycling_time => x[10],
  :running_position => x[11],
  :running_time => x[12],
  :race_time => x[13]})
 else
 end
end

