def nyc_pigeon_organizer(data)
  new = {}
  data.each do |key, value|
    value.each do |k,v|
      v.each do |name|
        new[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  x = new.keys
  data[:color].each do |col, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new[item][:color] << col.to_s
        end
      end
    end
  end
  data[:gender].each do |gender, type|
    type.each do |name|
      x.each do |item|
        if name === item
          new[item][:gender] << gender.to_s
        end
      end
    end
  end
  data[:lives].each do |lives, loc|
    loc.each do |name|
      x.each do |item|
        if name === item
          new[item][:lives] << lives.to_s
        end
      end
    end
  end
  return new
end 

