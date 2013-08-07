class ImportShortFtpTriathlon < ActiveRecord::Base
  require 'open-uri'
  require 'pdf-reader'

  def self.import_from_url(url,import_results_from_url_id)
    io = open(url)
    @reader = PDF::Reader.new(io)
    #@reader = PDF::Reader.new(url)
    @page_number = @reader.page_count
    @import_results_from_url_id = import_results_from_url_id
    debugger
    ImportShortFtpTriathlon.short_ftp_triathlon(@page_number,@reader, @import_results_from_url_id)
  end


  private

  def self.short_ftp_triathlon(page_number,reader, import_results_from_url_id)
    @import_results_from_url_id = import_results_from_url_id
    page = 1	
    while page < page_number+1 do
      clean_array = reader.page(page).text.split("\n").select { |z| z != ""}[6..-2]
      clean_array.each { |x|
        split_array = x.split
        puts split_array
        place = split_array[0].to_i
        ftp_number = split_array[1].to_i
        ftp_license = split_array[2].to_i
        athlete_name = ""
        pen = ""
        break_point = 4
        split_array[3..-1].each{ |value|
          if ["-", "DQ", "DNF", "DNS"].include? value
            pen = value
            athlete_name = athlete_name[0..-2]
            break
          else
            athlete_name << value + " "
            break_point += 1
          end
        }
        swimming_position= 0
        age_group_name = split_array[break_point]
        team = ""
        split_array[break_point+1..-1].each{ |value|
          if value.to_i != 0 && split_array[break_point + 2].match(":")
            swimming_position = value.to_i
            team = team[0..-2]
            break
          else
            team << value + " "
            break_point += 1
          end
        }
        if ["DQ","DNF", "DNS"].include? pen
        else
          if split_array[break_point+2..-1].count >= 6
            swimming_time = split_array[break_point+2..-1][0]
            cycling_position = split_array[break_point+2..-1][1].to_i
            cycling_time = split_array[break_point+2..-1][2]
            running_position = split_array[break_point+2..-1][3].to_i
            running_time = split_array[break_point+2..-1][4]
            race_time = split_array[break_point+2..-1][5]
        else 
          race_time = split_array[break_point+2..-1][-1]
        end
        end


          ImportShortFtpTriathlon.create({:import_results_from_url_id => import_results_from_url_id,
                                          :place => place,
                                          :ftp_number => ftp_number,
                                          :ftp_license => ftp_license,
                                          :athlete_name => athlete_name,
                                          :pen => pen,
                                          :age_group_name => age_group_name,
                                          :team => team,
                                          :swimming_position => swimming_position,
                                          :swimming_time => swimming_time,
                                          :cycling_position => cycling_position,
                                          :cycling_time => cycling_time,
                                          :running_position => running_position,
                                          :running_time => running_time,
                                          :race_time => race_time})


      }
      page += 1
        end
    end
=begin
  def self.get_athletes_name(array)
    name = ""
    break_point = 1
    unless array.nil?
      array.each{ |value|
        if value == "-" || value == "DQ" || value == "DNF" || value == "DNS"
          pen = value
          break
        else
          name = name + " " + value
          break_point = break_point +1
        end
      }
    end
    age_group_name = array[break_point]
  end
=end
  end
