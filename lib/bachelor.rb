require 'pry'

def get_first_name_of_season_winner(data, season)
    winner_ary = []
    data[season].each do |detail|
        if detail["status"] == "Winner"
            winner_ary = detail["name"].split
            end
        end
    winner_ary[0]
end

def get_contestant_name(data, occupation)
    name = ""
    data.each do |season, detail|
        detail.each do |contestant|
            if contestant["occupation"] == occupation
            name = contestant["name"]
            end
        end
    end
    name
end

def count_contestants_by_hometown(data, hometown)
  count_hometown = 0
  data.each do |season, detail|
      detail.each do |contestant|
          if contestant["hometown"] == hometown
              count_hometown += 1
          end
      end
  end
  count_hometown
end

def get_occupation(data, hometown)
    occupation = ""
    count = 0
    data.each do |season, detail|
        detail.each do |contestant|
            if contestant["hometown"] == hometown && count == 0
                occupation = contestant["occupation"]
                count += 1
            end
        end
    end
    occupation
# code here
end

def get_average_age_for_season(data, season)
  age = 0
  num_contestants = data[season].length
  avg_age = 0
  data[season].each do |contestant|
      age += contestant["age"].to_i
      end
  if age % num_contestants < num_contestants / 2
      avg_age = age / num_contestants
      else
      ave_age = age / num_contestants + 1
      end
      
  # code here
end
