def get_first_name_of_season_winner(data, season)
  # code here
  array = []
  data.each do |season_info, contestant_data|
    if season_info ===season
      contestant_data.each do |attributes|
      attributes.each do |element, value|
       if element == "status" && value == "Winner"
          array.push(attributes["name"].split(" ")[0])
          end
       end
    end
  end
end
return array[0]
end


def get_contestant_name(data, occupation)
  # code here
 array = []
  data.each do |season_info, contestant_data|
     contestant_data.each do |attributes|
       attributes.each do |elements, value|
         if elements == "occupation" && value == occupation
            array.push(attributes["name"])
          end

       end
    end
  end
return array[0]
end


def count_contestants_by_hometown(data, hometown)
  array = []
  data.each do |season_info, contestant_data|
    contestant_data.each do |attributes|
      attributes.each do |elements, value|
      if elements === "hometown" && value == hometown
        array.push(attributes["name"])
  # code here
        end
      end
    end 
  end 
  return array.length 
end 


def get_occupation(data, hometown)
  # code here
    array = []
  data.each do |season_info, contestant_data|
    contestant_data.each do |attributes|
      attributes.each do |elements, value|
         if elements === "hometown" && value == hometown
        array.push(attributes["occupation"])
       end
      end
    end 
  end 
  return array[0] 
end


def get_average_age_for_season(data, season)
    # code here
  array = []
  data.each do |season_info, contestant_data|
    if season_info == season
     contestant_data.each do |attributes|
       attributes.each do |elements, value|
         if elements == "age"
            array.push(value.to_i)
          end

        end
    end
  end
end
return mean = (array.sum / array.length)
# return array.reduce(:+).fdiv(array.size).to_i 
end

