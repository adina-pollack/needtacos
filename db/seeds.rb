require_relative './neighborhood_data.rb'
require_relative './restaurant_data.rb'
require_relative './taco_data.rb'

Taco.destroy_all
Restaurant.destroy_all
Neighborhood.destroy_all

taco_data = get_taco_data()
restaurant_data = get_restaurant_data()
neighborhood_data = get_neighborhood_data()


restaurant_data.each_pair do |neighborhood_name, restaurants|
  info = neighborhood_data[neighborhood_name]
  current_neighborhood = Neighborhood.create!({
    name:         info[:name]
    }),

    restaurants.each do |restaurant|

      current_restaurant = Restaurant.create!({
        name:        restaurant[:name],
        address:        restaurant[:address],
        phone_number:  restaurant[:phone_number],
        website:        restaurant[:website],
        neighborhood:   current_neighborhood
        }),

        tacos.each do |taco|
          Taco.create!({
            name: taco[:name],
            description: taco[:description],
            restaurant: current_restaurant
            })
          end
        end
      end
