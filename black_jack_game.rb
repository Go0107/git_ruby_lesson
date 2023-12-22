require_relative 'black_jack_card'
require_relative 'black_jack_deck'
require_relative 'black_jack_hand'
require_relative 'black_jack_human'
# ゲーム実行を管理するクラス
class Game
    def initialize
        @deck = Deck.new
        @player = Player.new
        @dealer = Dealer.new
        @cpu1 = Cpu1.new
        @cpu2 = Cpu2.new
    end

    def deal
        # デッキにカードを追加
        @player.hand.add_card(@deck.draw)
        @player.hand.add_card(@deck.draw)
        @dealer.hand.add_card(@deck.draw)
        @dealer.hand.add_card(@deck.draw)
        @cpu1.hand.add_card(@deck.draw)
        @cpu1.hand.add_card(@deck.draw)
        @cpu2.hand.add_card(@deck.draw)
        @cpu2.hand.add_card(@deck.draw)
    end

    def screen_deal
        # デッキに追加したカードを表示する処理
        puts "あなたの引いたカードは#{@player.hand.cards.first}です。"
        puts "あなたの引いたカードは#{@player.hand.cards[1]}です。"
        puts "cpu1の引いたカードは#{@cpu1.hand.cards.first}です。"
        puts "cpu1の引いたカードは#{@cpu1.hand.cards[1]}です。"
        puts "ディーラーの引いたカードは#{@dealer.hand.cards.first}です。"
        puts "ディーラーの引いた2枚目のカードはわかりません。"
    end

    def player_time
        while @player.hand.score < 22
            puts "あなたの現在の得点は#{@player.hand.score}です。カードを引きますか？ (Y/N)"
            choice = gets.chomp
            if ["Y", "y"].include?(choice)
                @player.hand.add_card(@deck.draw)
                puts "あなたの引いたカードは#{@player.hand.cards.last}です。"
            elsif ["N", "n"].include?(choice)
                break
            else
                puts "YもしくはNを入力してください。"
            end
        end
    end

    def cpu1_time
        # cpu1はディーラーと同じ性能（仮）
        while @cpu1.hand.score < 18
            puts "cpu1がカードを引きました"
            @cpu1.hand.add_card(@deck.draw)
            puts "cpu1の引いたカードは#{@cpu1.hand.cards.last}です"
        end
    end

    def dealer_time
        puts "ディーラーの引いた2枚目のカードは#{@dealer.hand.cards[1]}でした。"
        puts "ディーラーの現在の得点は#{@dealer.hand.score}です。"
        while @dealer.hand.score < 18
            @dealer.hand.add_card(@deck.draw)
            puts "ディーラーの引いたカードは#{@dealer.hand.cards.last}です。"
        end
    end

    def judge
        if @player.hand.score > 21 && @dealer.hand.score > 21
            puts "両者バーストしました。"
            puts "引き分けです。"
        elsif @player.hand.score > 21
            puts "あなたはバーストしました。"
            puts "ディーラーの勝ちです。"
        elsif @dealer.hand.score > 21
            puts "ディーラーはバーストしました。"
            puts "あなたの勝ちです！"
        elsif @player.hand.score > @dealer.hand.score
            puts "あなたの勝ちです！"
        elsif @player.hand.score < @dealer.hand.score
            puts "ディーラーの勝ちです。"
        else
            puts "引き分けです！"
        end
    end

    def cpu1_judge
        if @cpu1.hand.score > 21 && @dealer.hand.score > 21
            puts "両者バーストしました。"
            puts "引き分けです。"
        elsif @cpu1.hand.score > 21
            puts "cpu1はバーストしました。"
            puts "ディーラーの勝ちです。"
        elsif @dealer.hand.score > 21
            puts "ディーラーはバーストしました。"
            puts "cpu1の勝ちです！"
        elsif @cpu1.hand.score > @dealer.hand.score
            puts "cpu1の勝ちです！"
        elsif @cpu1.hand.score < @dealer.hand.score
            puts "ディーラーの勝ちです。"
        else
            puts "引き分けです！"
        end
    end

    def start
        puts "ブラックジャックを開始します。"
        # ユーザーにカードを2枚配布
        # ディーラーにカードを2枚配布,1枚わからない
        deal
        screen_deal
        # 自分の得点の表示、もう一度引くかの選択、ループ処理
        player_time
        # cpu1のターン
        cpu1_time
        # ディーラーの二枚目の表示
        # ディーラーの得点の表示
        # でぃーらーが17を超えるまで引く
        dealer_time
        # 自分の得点、相手の得点の表示
        puts "あなたの得点は#{@player.hand.score}です。"
        puts "ディーラーの得点は#{@dealer.hand.score}です。"
        # 勝者の表示
        judge
        # cpuの得点、勝敗
        puts "cpu1の得点は#{@cpu1.hand.score}です。"
        cpu1_judge
        puts "ブラックジャックを終了します。"
    end
end