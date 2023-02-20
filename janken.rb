def janken
    puts "じゃんけん..."
    puts "0 (グー), 1 (チョキ), 2(パー)"
    @input_type = gets.chomp.to_i
    while @input_type > 2
        puts "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿"
        puts "￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣"
        puts "0-2を入力してください"
        puts "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿"
        puts "￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣"
    end
    
    hands = ["グー", "チョキ", "パー"]
    myhands = @input_type
    cphands = rand(0..2)
    puts "ホイ!"
    puts "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿"
    puts "￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣"
    puts "あなた：#{hands[myhands]}を出しました"
    puts "相手:#{hands[cphands]}を出しました"
    puts "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿"
    puts "￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣"

    $win = "win"
    $lose = "lose"

    if (myhands == 0 && cphands == 1) || (myhands == 1 && cphands == 2) || (myhands == 2 && cphands == 0)
        puts "勝ち!"
        puts "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿"
        puts "￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣"
        $win = "win"
        acchimuite
    elsif (myhands == 0 && cphands == 2) || (myhands == 1 && cphands == 0) || (myhands == 2 && cphands == 1)
        puts "負け!"
        puts "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿"
        puts "￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣"
        $lose = "lose"
        acchimuite
    elsif myhands == cphands
        puts "あいこなのでもう一度!"
        puts "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿"
        puts "￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣"
        janken 
    end
end

def acchimuite
    puts "あっち向いて〜"
    puts "0 (上), 1(下), 2(左), 3(右)"
    @input_type = gets.chomp.to_i
    while @input_type > 3
        puts "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿"
        puts "￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣"
        puts "0-3を入力してください"
        puts "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿"
        puts "￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣"
    end

    directions = ["上", "下", "左", "右"]
    mydirect = @input_type
    cpdirect = rand(0..3)
    puts "ホイ!"
    puts "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿"
    puts "￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣"
    puts "あなた：#{directions[mydirect]}"
    puts "相手:#{directions[cpdirect]}"
    puts "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿"
    puts "￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣"

    if (mydirect == cpdirect) && ($win == "win")
        puts "勝ち!"
        puts "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿"
        puts "￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣"
    elsif(mydirect == cpdirect) && ($lose == "lose")
        puts "負け!"
        puts "＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿"
        puts "￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣￣"
    else
        puts "もう一度!"
        janken
    end
end

janken