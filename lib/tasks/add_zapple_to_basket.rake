# ex. command $rake add_zapple_to_basket\["Gala",1\]

def find_basket(variety, baskets)
  # Find baskets with available space
  basket_array = baskets.select { |basket| basket.zapples.length < basket.capacity }
  # Find a basket with the same variety
  target_basket = basket_array.find { |basket| basket.zapples.size > 0 && basket.zapples.first.variety == variety }
  # If no basket with same variety, find empty basket
  if target_basket.nil?
    target_basket = basket_array.find { |basket| basket.zapples.size == 0 }
  end
  target_basket
end

def put_zapple_in_basket(variety, basket)
  basket.zapples.create!(variety: variety)
  # Calculate new fill rate
  percentage = (basket.zapples.size.to_f / basket.capacity.to_f) * 100
  basket.fill_rate = "#{percentage.round(2)}%"
  basket.save
end


desc "Adds zapples to an empty or non-full basket containing the same variety"
task :add_zapple_to_basket, [:variety, :count] => :environment do |t, args|
  # Get baskets
  baskets = Basket.all
  # Find a basket for the variety
  basket = find_basket(args[:variety], baskets)
  # If no basket found, you can't fit more zapples
  if basket.nil?
     puts "All baskets are full. We couldn't find the place for #{args[:count]} zapples"
  # If basket found, add zapples to it
  else
	  # Loop over count and add zapples to basket
	  for i in 1..args[:count].to_i
		# Check if basket has capacity, if not find new basket
  		if(basket.zapples.size < basket.capacity)
  			put_zapple_in_basket(args[:variety], basket)
  		else
  			basket = find_basket(args[:variety], baskets)
  			# If no basket found, error message
			  if basket.nil?
          leftover = args[:count].to_i - i
  			  puts "All baskets are full. We couldn't find the place for #{leftover} zapples"
          break
			  else
			    put_zapple_in_basket(args[:variety], basket)
        end
  		end
    end
	end
end
