require 'pry'
def nyc_pigeon_organizer(data)
  
  new_hash = {}

# Get array of unique names  
# attributes = color, gender, lives
# details = colors, genders, locations
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
    pigeon_names.each do |name|
      new_hash[name][attributes] = []
    end 
  end 

# Assign info to each key  
  data.each do |attributes, details|
    details.each do |property, names|
      names.each do |name|
        new_hash[name][attributes] << property.to_s 
      end
    end 
  end 
  
  new_hash
  
end