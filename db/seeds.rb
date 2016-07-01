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
  current_neighborhood = Neighborhood.create!({
    name:     neighborhood_data[:name]
    })

    taco_data.each_pair do |restaurant_name, tacos|
      info = restaurant_data[restaurant_name]
      current_restaurant = Restaurant.create!({
        name:        info[:name],
        address:        info[:address],
        phone_number:  info[:phone_number],
        website:        info[:website],
        neighborhood:   current_neighborhood
        })

        tacos.each do |taco|
          Taco.create!({
            name: taco[:name],
            description: taco[:description],
            restaurant: current_restaurant
            })
          end
        end
      end
