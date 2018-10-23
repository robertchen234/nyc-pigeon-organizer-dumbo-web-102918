require 'pry'

def nyc_pigeon_organizer(data)
  new = {}
  data.each do |infos| #blocks
  binding.pry
    infos.each do |info| #color and gender
  binding.pry
      info.each do |attribute, details| #colorGenderLives, colorMaleFemaleSubwayCentralparkLibraryCityhall => names
  binding.pry
        details.each do |detail, names| #colorMaleFemaleSubwayCentralparkLibraryCityhall, array of names
  binding.pry
          names.each do |name| #string from array
  binding.pry
            new[:name] = {
              :color => detail if attribute.include?("color")
              :gender => detail if attribute.include?("gender")
              :lives => detail if attribute.include?("lives")
            }
          end
        end 
      end
    end 
  end 
  new
end

nyc_pigeon_organizer("pigeons")