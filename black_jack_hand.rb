require_relative 'black_jack_deck'
require_relative 'black_jack_card'

# 手札を作るクラス
class Hand
    attr_accessor :cards

    def initialize
        @cards = []
    end

    def add_card(card)
        # 配列に引いたカードを追加する処理
        @cards << card
    end

    def score
        total_score = 0
        @cards.each do |card|
            total_score += card.points
        end

        total_score
    end
end



