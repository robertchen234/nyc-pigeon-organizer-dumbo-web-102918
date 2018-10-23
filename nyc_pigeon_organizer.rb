require 'pry'
def nyc_pigeon_organizer(data)
  
  new_hash = {}
  
# Get array of unique names
  pigeon_names = data.collect do |attributes, details|
    details.values
    end
    .flatten.uniq
  
# Create hash with each name as key
# {"Theo"=> {}, "Peter" => {},...}
  pigeon_names.each do |name| 
    new_hash[name] = {} 
  end
  
# Create keys(categories for each pigeon) with value of empty array
  data.each do |attributes, details|
    new_hash.each do |name, hash|
      new_hash[name][attributes] = []
    end
  end
  
# Assign info to each key
  data.each do |attribute, details|
    details.each do |property, names|
      names.each do |name|
        new_hash[name][attribute] << property.to_s
      end
    end
  end
  
  new_hash
  
end