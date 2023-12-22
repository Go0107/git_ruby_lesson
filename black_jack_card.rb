# カードを作るクラス
class Card
    attr_reader :value, :suit

    MARK = ["ハート", "ダイヤ", "スペード", "クラブ"]
    NUMBER = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]

    def initialize(mark, number)
        @mark = mark
        @number = number
    end

    def to_s
        "#{@mark}の#{@number}"
    end

    def points
        case @number
        when "A"
            1
        when "K", "Q", "J"
            10
        else
            @number.to_i
        end
    end

end