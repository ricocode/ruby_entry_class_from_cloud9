class Player
  attr_accessor :hand
  def initialize
   @hand = hand
  end
  
  def player_hand  #player手を選択
    index = ["数字を入力してください","0: グー","1: チョキ","2: パー"]
    index.each do |content|
      puts content
    end
   
    @hand = gets.to_i
   
    while true
      if hand < 0 || hand > 2
        puts "0,1,2以外入力できません。再入力してください。" 
        player_hand
      break
      elsif hand == 0
        puts "player;グー"
        return 0
      elsif hand == 1
        puts "player;チョキ"
        return 1
      else
        puts "player;パー"
        return 2
      end
    end
  end
end #class

class Enemy
  attr_accessor :hand
  def initialize
    @hand = hand
  end
  
  def enemy_hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する  
    @hand = rand(0..2)
    if hand == 0
      puts "enemy; グー"
      return 0
    elsif hand == 1
      puts "enemy; チョキ"
      return 1
    else
      puts "enemy; パー" 
      return 2
    end
  end
end


class Janken
  def pon(player_hand, enemy_hand)
    result = (player_hand + enemy_hand + 3) % 3
    if result == 2
      return 2
    elsif result == 1
      return 1
    else
      return 0
    end #if
  end #def

  def show_judge(result)
    while true
      if result == 0
        puts "あいこで"
        player.player_hand
        enemy.enemy_hand
        janken.pon(player_hand,enemy_hand)
      break
      elsif result == 2
       puts "player win"
      else 
    　  puts "enemy win"
      end #if
    end #while
  end #def
end #class

player = Player.new
enemy = Enemy.new
janken = Janken.new

puts janken.show_judge(janken.pon(player.player_hand, enemy.enemy_hand))