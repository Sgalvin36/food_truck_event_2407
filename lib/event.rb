class Event
    attr_reader :name, :food_trucks

    def initialize(name)
        @name = name
        @food_trucks = []
    end

    def add_food_truck(truck)
        @food_trucks << truck
    end

    def food_truck_names
        names = []
        @food_trucks.each do |truck|
            names << truck.name
        end
        names
    end

    def food_truck_that_sell(item)
        trucks = []
        @food_trucks.each do |truck|
            if truck.inventory.include?(item)
                trucks << truck
            end
        end
        trucks
    end

    def sorted_item_list
        items = []
        @food_trucks.each do |truck|
            truck.inventory.each do |item, _|
                if !items.include?(item.name)
                    items << item.name
                end
            end
        end
        items.sort
    end
end