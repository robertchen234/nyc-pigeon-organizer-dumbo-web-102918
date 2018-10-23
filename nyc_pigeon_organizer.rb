def nyc_pigeon_organizer(data)
  new = {}
  data.each do |infos| #blocks
    infos.each do |info|
      info.each do |attribute, details| #color v gender, colors => names
        details.each do |color, names| 
          names.each do |name| #string from array
            new[:name] = {
              :color => color 
              :gender => 
            }
          end
        end 
      end
    end 
  end 
    
end