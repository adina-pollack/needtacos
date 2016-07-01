logancircle = Neighborhood.create(name: "Logan Cirle")
dupontcircle = Neighborhood.create(name: "Dupont Cirle")

tortillacoast = Restaurant.create(name: "Tortilla Coast", address: "1460 P St NW, Washington, DC 20005 ", phone_number: "(202) 629-3280", website: "http://www.tortillacoast.com/", neighborhood: logancircle)
chipotle = Restaurant.create(name: "Chipotle Mexican Grill", address: "1508 14th St NW, Washington, DC 20005", phone_number: "(202) 627-1951", website: "http://www.chipotle.com/", neighborhood: logancircle)
lauriolplaza = Restaurant.create(name: "Lauriol Plaza", address: "1835 18th St NW, Washington, DC 20009", phone_number: "(202) 387-0035", website:  "http://www.lauriolplaza.com/", neighborhood: dupontcircle)
mission = Restaurant.create(name: "Mission", address: "1606 20th St NW, Washington, DC 20009", phone_number: "(202) 525-2010", website:  "http://missiondupont.com/", neighborhood: dupontcircle)

Taco.create([
  {name: "Chicken", description:"Marinated grilled chicken, lettuce, red and green peppers, pico de gallo, cilantro, queso fresco, drizzled with chipotle sauce in a corn tortilla.", restaurant: tortillacoast},
  {name: "Baja Fish", description: "Beer battered crispy tilapia atop Baja slaw, with spicy aioli, pickled onion, radish, and cilantro in a flour tortilla.", restaurant: tortillacoast},
  {name: "Crispy Corn Tacos", description: "Choice of protein and toppings.", restaurant: chipotle},
  {name: "Soft Corn Tacos", description: "Choice of protein and toppings.", restaurant: chipotle},
  {name: "Tacos al Carbon", description: "Two soft corn tortillas with grilled Beef or Chicken, onions, cilantro, lime and salsa verde.", restaurant: lauriolplaza},
  {name: "Spicy Fish Tacos", description: "Two soft flour tortillas with jalapenos, cabbage, and chipotle sauce.", restaurant: lauriolplaza},
  {name: "Blackened Salmon", description: "Grilled salmon, pineapple pico de gallo, spicy salsa verde.", restaurant: mission},
  {name: "Carnitas", description: "Carnitas, cilantro, pico de gallo, pickled onion, spicy salsa verde.", restaurant: mission}
  ])
