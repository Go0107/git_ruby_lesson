class VendingMachine

    def initialize(maker_name)
        @maker_name = maker_name
        @money = 0
        @cup_amount = 0
    end

    def press_button(item)
        case item.name
        when "cola", "cider"
            buy_drink(item.name, item.price)
        when "hot", "cold"
            buy_coffee(item.name)
        when "chips"
            buy_snack(item.name, item.price)
        end
    end

    def deposit_coin(coin)
        if coin == 100
            @money += 100
        end
    end

    def add_cup(n)
        if @cup_amount <= 100
            @cup_amount += n
        end
    end

    private

    def press_manufacturer_name
        puts @maker_name
    end

    def buy_drink(drink, price)
        if @money >= price
            @money -= price
            return drink
        end
    end

    def buy_coffee(coffee)
        if @money >= 100
            @money -= 100
            @cup_amount -= 1
            return "#{coffee} cup coffee"
        end
    end

    def buy_snack(snack, price)
        if @money >= price
            @money -= price
            return snack
        end
    end

end

class Item # アイテムに関する責務のクラスを作成してください
    attr_accessor :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end
end

# 飲み物に関する責務のクラスを継承を利用して作成してください
class Drink < Item
end

# カップコーヒーに関する責務のクラスを継承を利用して作成してください
class Cup_coffee < Item
end

# スナック菓子に関する責務のクラスを継承を利用して作成してください
class Snack < Item
end

hot_cup_coffee = Cup_coffee.new('hot', 100);
cider = Drink.new('cider', 100)
snack = Snack.new("chips", 150)
vending_machine = VendingMachine.new('サントリー')
vending_machine.deposit_coin(100)
vending_machine.deposit_coin(100)
puts vending_machine.press_button(cider)

puts vending_machine.press_button(hot_cup_coffee)
vending_machine.add_cup(1)
puts vending_machine.press_button(hot_cup_coffee)

puts vending_machine.press_button(snack)
vending_machine.deposit_coin(100)
vending_machine.deposit_coin(100)
puts vending_machine.press_button(snack)