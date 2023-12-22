require_relative 'black_jack_card'

# デッキを作るクラス
class Deck
    def initialize
        @cards = []
        Card::MARK.each do |mark|
            Card::NUMBER.each do |number|
                @cards << Card.new(mark, number)
            end
        end
        # 配列をシャッフル
        @cards.shuffle!
    end

    def draw
        # 配列の最後の要素を取得し、消去する
        @cards.pop
    end
end
