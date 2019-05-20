class Player
  attr_accessor :player_hand
  def initialize
   @player_hand = player_hand
  end
  
  def player_hand  #player手を選択
   index = ["数字を入力してください","0: グー","1: チョキ","2: パー"]
   index.each do |content|
    puts content
   end
   @player_hand = gets.to_i
   
    if player_hand < 0 || player_hand > 2
     puts "0,1,2以外入力できません。再入力してください。" 
      return 3
    elsif player_hand == 0
     puts "player;グー"
      return 0
    elsif player_hand == 1
     puts "player;チョキ"
      return 1
    else # player_hand == 2
     puts "player;パー"
      return 2
    end #if
  end #def
end #class

class Enemy
  attr_accessor :enemy_hand
  def initialize
   @enemy_hand = enemy_hand
  end
  
  def enemy_hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する  
    @enemy_hand = rand(0..2)
    if enemy_hand == 0
     puts "enemy; グー"
     return 0
    elsif enemy_hand == 1
     puts "enemy; チョキ"
     return 1
    else
     puts "enemy; パー" 
     return 2
    end #if
  end #def
end #class

class Janken
  def pon(player_hand, enemy_hand) 
  pon = (@player_hand + @enemy_hand + 3) % 3
    if pon == 2
     puts "player win"
    return 2
    elsif pon == 1
     puts "player lose"
    return 1
    else
    return 0
     puts "あいこ"
    end #if
  end #def
  
  def show_judge(pon)
   # while true
      if pon == 0
        puts "あいこで" #要再帰
    　elsif pon == 2
    　  puts "player win"
   #  break
    　else # pon == 1
    　  puts "enemy win"
    　end #if
   # end #while
  end #def
end #class

player = Player.new
enemy = Enemy.new
janken = Janken.new

puts janken.show_judge(pon)