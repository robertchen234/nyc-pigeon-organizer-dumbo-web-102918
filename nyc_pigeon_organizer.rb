require 'pry'
def nyc_pigeon_organizer(data)
  
  new_hash = {}

# Get array of unique names  
# attributes = color, gender, lives
# details = colors, 
  pigeon_names = data.collect |attributes, details|

# Create hash with each name as key
# {"Theo"=> {}, "Peter" => {},...}  

# Create keys(categories for each pigeon) with value of empty array  

# Assign info to each key  













#   pigeon_names = data.collect do |attributes, details|
#     details.values 
#   end 
#   .flatten.uniq 

#   pigeon_names.each do |name|
#     new_hash[name] = {}
#   end 

#   data.each do |attributes, details|
#     new_hash.each do |name, hash|
#       new_hash[name][attributes] = []
#     end
#   end  

#   data.each do |attributes, details|
#     details.each do |property, names|
#       names.each do |name|
#         new_hash[name][attributes] << property.to_s 
#       end 
#     end 
#   end 
  
#   new_hash 
  
# end