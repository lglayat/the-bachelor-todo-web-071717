def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_number, people|
    if season_number == season
      people.each do |values|
        if values["status"] == "Winner"
          return values["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_number, people|
    people.each do |values|
      if values["occupation"] == occupation
        return values["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_number, people|
    people.each do |values|
      if values["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_number, people|
    people.each do |values|
      if values["hometown"] == hometown
        return values["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here


  ageSum = 0
  personCount = 0
  data.each do |season_number, people|
    if season_number == season
      people.each do |values|
        ageSum += values["age"].to_i
        personCount += 1
      end
    end
  end
  average = ageSum.to_f / personCount.to_f
  average.ceil
end
