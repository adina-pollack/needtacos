

logancircle = Neighborhood.create(name: "Logan Circle")
dupontcircle = Neighborhood.create(name: "Dupont Circle")
pennquarter = Neighborhood.create(name: "Penn Quarter")
ustreet = Neighborhood.create(name: "U Street Corridor")
columbiaheights = Neighborhood.create(name: "Columbia Heights")
navyyard = Neighborhood.create(name: "Navy Yard")
shaw = Neighborhood.create(name: "Shaw")

tortillacoast = Restaurant.create(name: "Tortilla Coast", address: "1460 P St NW, Washington, DC 20005 ", phone_number: "(202) 629-3280", website: "http://www.tortillacoast.com/", neighborhood: logancircle)
chipotle = Restaurant.create(name: "Chipotle Mexican Grill", address: "1508 14th St NW, Washington, DC 20005", phone_number: "(202) 627-1951", website: "http://www.chipotle.com/", neighborhood: logancircle)
lauriolplaza = Restaurant.create(name: "Lauriol Plaza", address: "1835 18th St NW, Washington, DC 20009", phone_number: "(202) 387-0035", website:  "http://www.lauriolplaza.com/", neighborhood: dupontcircle)
mission = Restaurant.create(name: "Mission", address: "1606 20th St NW, Washington, DC 20009", phone_number: "(202) 525-2010", website:  "http://missiondupont.com/", neighborhood: dupontcircle)
oyamel = Restaurant.create(name: "Oyamel Cocina Mexicana", address: "401 7th St NW, Washington, DC 20004", phone_number: "(202) 628-1005", website: "http://www.oyamel.com/", neighborhood: pennquarter)
rosa = Restaurant.create(name: "Rosa Mexicana", address: "575 7th St NW, Washington, DC 20004", phone_number: "(202) 783-5522", website: "http://www.rosamexicano.com/", neighborhood: pennquarter)
taquerianacional = Restaurant.create(name: "Taqueria Nacional", address: "1409 T St NW, Washington, DC 20009", phone_number: "(202) 299-1122", website: "http://taquerianacional.co/", neighborhood: ustreet)
elrey = Restaurant.create(name: "El Rey", address: "919 U St NW, Washington, DC 20001", phone_number: "(202) 506-6418", website: "http://www.elreydc.com/", neighborhood: ustreet)
taqueriadistrito = Restaurant.create(name: "Taqueria Distrito Federal", address: "3463 14th St NW, Washington, DC 20010", phone_number:"(202) 276-7331", website: "http://www.taqueriadf.com/", neighborhood: columbiaheights)
elrinconcito = Restaurant.create(name: "El Rinconcito II", address: "1326 Park Rd NW, Washington, DC 20010", phone_number: "(202) 789-4110", neighborhood: columbiaheights)
agua = Restaurant.create(name: "Agua 301", address: "301 Water St SE, Washington, DC 20003", phone_number: "(202) 484-0301", website: "http://www.agua301.com/", neighborhood: navyyard)
elsol = Restaurant.create(name: "El Sol Restaurante", address: "1227 11th St NW, Washington, DC 20001", phone_number: "(202) 815-4789", website:  "http://www.elsol-dc.com/", neighborhood: shaw)
ritoloco = Restaurant.create(name: "Rito Loco Restaurant", address: "606 Florida Ave NW, Washington, DC 20001", phone_number: "202-836-4270", website: "https://ritoloco.com/", neighborhood: shaw)

Taco.create([
  {name: "Chicken", description:"Marinated grilled chicken, lettuce, red and green peppers, pico de gallo, cilantro, queso fresco, drizzled with chipotle sauce in a corn tortilla.", restaurant: tortillacoast},
  {name: "Baja Fish", description: "Beer battered crispy tilapia atop Baja slaw, with spicy aioli, pickled onion, radish, and cilantro in a flour tortilla.", restaurant: tortillacoast},
  {name: "Crispy Corn Tacos", description: "Choice of protein and toppings.", restaurant: chipotle},
  {name: "Soft Corn Tacos", description: "Choice of protein and toppings.", restaurant: chipotle},
  {name: "Tacos al Carbon", description: "Two soft corn tortillas with grilled Beef or Chicken, onions, cilantro, lime and salsa verde.", restaurant: lauriolplaza},
  {name: "Spicy Fish Tacos", description: "Two soft flour tortillas with jalapenos, cabbage, and chipotle sauce.", restaurant: lauriolplaza},
  {name: "Blackened Salmon", description: "Grilled salmon, pineapple pico de gallo, spicy salsa verde.", restaurant: mission},
  {name: "Carnitas", description: "Carnitas, cilantro, pico de gallo, pickled onion, spicy salsa verde.", restaurant: mission},
  {name: "Tinga Poblano con Puerco", description: "Stew of shredded Rocky Hollow Farms pork with chorizo, chipotle, letture and avocado.", restaurant: oyamel},
  {name: "Chapulines", description: "The legendary Oaxacan specialty of sauteed grasshoppers, shallots, tequila and guacamole.", restaurant: oyamel},
  {name: "Tinga de Res", description: "Braised beef brisket with tomatillo-habanero salsa, house-made slaw and pickled red onion.", restaurant: rosa},
  {name: "Pescado de Mahi Mahi", description: "Grilled white fish with white cabbage escabeche and jalapeno-tartar sauce.", restaurant: rosa},
  {name: "Carnitas Taco", description: "Comes with chopped onion and fresh cilantro.", restaurant: taquerianacional},
  {name: "Lamb Taco", description: "Comes with chopped onion and fresh cilantro.", restaurant: taquerianacional},
  {name: "Carne Asada", description: "Charred beef skit, salsa verde, pickeled radish, onions, cilantro.", restaurant: elrey},
  {name: "Queso con Hongos", description: "Peppers, onions, mushrooms, corn, crema, cotija and Oaxaca cheeses.", restaurant: elrey},
  {name: "Chicarron en salsa verde", description: "Pork skin in green sauce with choice of toppings.", restaurant: taqueriadistrito},
  {name: "Barbacoa Res", description: "Beef with choice of toppings.", restaurant: taqueriadistrito},
  {name: "Tacos Al Carbon", description: "Handmade corn flour tortilla tacos. New York Strips or boneless chicken breast. Topped with pico de gallo and salvadorean shredded cheese on top.", restaurant: elrinconcito},
  {name: "Tacos de Carne o Pollo", description: "Soft or hard shell tortilla tacos. Ground beef or shredded chicken. Topped with lettuce, Mexican cheese, sour cream & pico de gallo.", restaurant: elrinconcito},
  {name: "Pork Belly al Pastor", description:  "Crispy fried pork belly, pineapple habanero salsa, al pastor aioli, salsa de arbol.", restaurant: agua},
  {name: "Atun Taco", description: "Sauteed tuna, chopped scallions, sofrito sauce, mustard aioli.", restaurant: agua},
  {name: "Lengua x Tongue", description: "Slow braised beef tongue.", restaurant: elsol},
  {name: "Nopales x Vegetarian", description: "Nopal (cactus paddle) with fresh cheese.", restaurant: elsol},
  {name: "Fish Tacos", description: "Fresh tilapia filets are seasoned with a homemade Caribbean-inspired dry rub that brings out the flavor and feel of the islands. Lightly pan fried leaving them flaky and perfectly crispy.", restaurant: ritoloco},
  {name: "Rib Tacos", description: "The ribs are rubbed with a 15 spice homemade dry rub. After sitting for 2 days they are braised in a bed of juice blends for 7 hours. The meat is then pulled and re-basted with a reduction sauce made from the juice.", restaurant: ritoloco}
  ])
