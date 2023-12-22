require_relative 'black_jack_hand'

# プレーヤーに関するクラス
class Human
attr_accessor :hand

def initialize
    @hand = Hand.new
end
end

class Player < Human
end

class Dealer < Human
end
