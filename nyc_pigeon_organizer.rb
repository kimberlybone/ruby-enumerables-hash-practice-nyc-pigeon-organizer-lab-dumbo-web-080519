def nyc_pigeon_organizer(data)
# Type your Ruby code below!
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def pigeon_organizer (data)
  new = {}
  array = []
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
  puts new
end 
pigeon_organizer(pigeon_data)
end
