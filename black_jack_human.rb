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

class Cpu1 < Human
end

class Cpu2 < Human
end