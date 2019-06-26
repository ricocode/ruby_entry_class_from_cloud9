def introduce(name,age)
    puts "私は#{name}です。#{age}才です。"
end

puts "名前を入力"
name = gets.chomp
puts "年齢を入力"
age = gets.to_i

introduce(name,age)

#def play(sports)
#    puts "私は今日#{sports}をします。"
#end

#play("野球")
#play("水泳")
#play("マラソン")

#def add(n,y)
#    puts n % y
#end

#add(1000,30)




#def play(sports)
    #puts"私は今日#{sports}をします"
#end

#play("野球")
