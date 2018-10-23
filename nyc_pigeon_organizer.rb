def nyc_pigeon_organizer(data)
  new = {}
  data.each do |infos| #blocks
    infos.each do |info| #color and gender
      info.each do |attribute, details| #colorGenderLives, colorMaleFemaleSubwayCentralparkLibraryCityhall => names
        details.each do |detail, names| #colorMaleFemaleSubwayCentralparkLibraryCityhall, array of names
          names.each do |name| #string from array
            new[:name] = {
              :color => detail if attribute.include?("color")
              :gender => detail if attribute.include?("gender")
              :lives => detail if attribute.include?(lives)
            }
          end
        end 
      end
    end 
  end 
    
end