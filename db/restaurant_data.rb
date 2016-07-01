def get_restaurant_data
  restaurant_data = {
          "tortillacoast" =>{
            :name => "Tortilla Coast",
            :address => "1460 P St NW, Washington, DC 20005 ",
            :phone_number => "(202) 629-3280",
            :website => "http://www.tortillacoast.com/",
            :neighborhood => "logancircle"
          },
          "chipotle" => {
            :name => "Chipotle Mexican Grill",
            :address => "1508 14th St NW, Washington, DC 20005",
            :phone_number => "(202) 627-1951",
            :website => "http://www.chipotle.com/",
            :neighborhood => "logancircle"
          },
          "lauriolplaza" => {
            :name => "Lauriol Plaza",
            :address => "1835 18th St NW, Washington, DC 20009",
            :phone_number => "(202) 387-0035",
            :website => "http://www.lauriolplaza.com/",
            :neighborhood => "dupontcircle"
        },
          "mission" => {
            :name => "Mission",
            :address => "1606 20th St NW, Washington, DC 20009",
            :phone_number => "(202) 525-2010",
            :website => "http://missiondupont.com/",
            :neighborhood => "dupontcircle"
        }
    }
  return restaurant_data
end
