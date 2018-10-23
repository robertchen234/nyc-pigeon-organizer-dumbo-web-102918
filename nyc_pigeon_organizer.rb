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
  pigeon_names.each {|name| new_hash[name] = {}}
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

# def nyc_pigeon_organizer(data)
#   new = {}
#   data.each do |infos| #blocks
#   binding.pry
#     infos.each do |info| #color and gender
#   binding.pry
#       info.each do |attribute, details| #colorGenderLives, colorMaleFemaleSubwayCentralparkLibraryCityhall => names
#   binding.pry
#         details.each do |detail, names| #colorMaleFemaleSubwayCentralparkLibraryCityhall, array of names
#   binding.pry
#           names.each do |name| #string from array
#   binding.pry
#             new[:name] = {
#               :color => detail if attribute.include?("color")
#               :gender => detail if attribute.include?("gender")
#               :lives => detail if attribute.include?("lives")
#             }
#           end
#         end 
#       end
#     end 
#   end 
#   new
# end

# nyc_pigeon_organizer("Pigeons")