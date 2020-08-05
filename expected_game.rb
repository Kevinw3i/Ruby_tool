   
puts '遊戲A ： 小於75贏,Odds 2'
puts '遊戲B ： 小於50贏,Odds 3'
puts '遊戲C ： 小於33贏,Odds 5'

$balance     = 1000
game_count   = 20

game_a_conditan = 75
game_a_odds     = 2
game_b_conditan = 50
game_b_odds     = 3
game_c_conditan = 33
game_c_odds     = 5

def game (conditan, odds, place_bet)
    rand_num = rand(1..100)
    
    puts "開出的大小為#{rand_num}, 你的數字為#{conditan}"

    if rand_num > conditan
        $balance = $balance + ( place_bet * -1 )
    else
        $balance = $balance + ( place_bet * odds )
    end
end

while game_count > 1 do
    puts "============================================="
    p   "當前籌碼剩餘籌碼 #{$balance} , 請選擇遊戲Ａ、Ｂ、Ｃ"
    choose_game = gets.chomp.to_s

    p "請選擇下注金額： "
    choose_place_bet = gets.chomp.to_i

    case choose_game
        when "A", "a" 
            game(game_a_conditan, game_a_odds, choose_place_bet)
        when 'B','b' 
            game(game_b_conditan, game_b_odds, choose_place_bet)
        when 'C','c' 
            game(game_c_conditan, game_c_odds, choose_place_bet)
        else
            puts "什麼都沒做"
    end
    game_count  = game_count - 1

    # puts "擲出的點數是 #{result[1]} , 剩餘遊戲次數 #{game_count} "
    puts "剩餘籌碼 #{$balance},剩餘遊戲次數 #{game_count} "
end

puts "遊戲結束"