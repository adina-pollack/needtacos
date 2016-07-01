def get_taco_data
  taco_data = {
    "tortillacoast" => [
      {:name => "Chicken",
        :description => "Marinated grilled chicken, lettuce, red and green peppers, pico de gallo,
        cilantro, queso fresco, drizzled with chipotle sauce in a corn tortilla."
      },
      {:name => "Baja Fish",
        :description => "Beer battered crispy tilapia atop Baja slaw, with spicy aioli, pickled onion, radish, and cilantro in a flour tortilla."
        }],
        "chipotle" => [
          {:name => "Crispy Corn Tacos",
            :description => "Choice of protein and toppings."
          },
          {:name => "Soft Corn Tacos",
            :description => "Choice of protein and toppings."
            }],
            "lauriolplaza" => [
              {:name => "Tacos al Carbon",
                :description => "Two soft corn tortillas with grilled Beef or Chicken, onions, cilantro, lime and salsa verde."
              },
              {:name => "Spicy Fish Tacos",
                :description => "Two soft flour tortillas with jalapenos, cabbage, and chipotle sauce."
                }],
                "mission" => [
                  {:name => "Blackened Salmon",
                    :description => "Grilled salmon, pineapple pico de gallo, spicy salsa verde."
                  },
                  {:name => "Carnitas",
                    :description => "Carnitas, cilantro, pico de gallo, pickled onion, spicy salsa verde."
                    }]
                  }
                  return taco_data
                end
