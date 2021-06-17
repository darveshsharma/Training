def expensive_orders(hash,int)
    max_cost={}
    hash.each do |key,value|
        if value > int
            max_cost.store(key,value)
        end
    end
    print max_cost
    puts
end

expensive_orders({ "a" => 3000, "b" => 200, "c" => 1050 }, 1000)
expensive_orders({ "Gucci Fur" => 24600, "Teak Dining Table" => 3200, "Louis Vutton Bag" => 5550, "Dolce Gabana Heels" => 4000 }, 20000)
expensive_orders({ "Deluxe Burger" => 35, "Icecream Shake" => 4, "Fries" => 5 }, 40)