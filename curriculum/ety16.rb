#while 繰り返し続ける条件 do
#  繰り返したい処理
#end

#for 変数 in 繰り返し範囲 do
#  式
#end

#for number in 0..10 do
# puts number
#end

#繰り返す回数.times do
#  繰り返したい処理
#end

#10.times do #10回表示することを指定
# puts "Hello World" #表示させる値（処理）
#end

while true
  puts "以下より行う操作を選んでください"
  puts "1:ブログを作成する"
  puts "2:作成されたブログを見る"
  puts "3:ブログアプリを終了する"
  number = gets.to_i

  if number == 1
    puts "1:ブログを作成する"
    puts "ブログのタイトルを入力してください"
    blog_title = gets
    puts "ブログの本文を入力してください"
    blog_content = gets
    puts "入力されたタイトルと本文は以下です。"
    puts "タイトル：#{blog_title}"
    puts "本文：#{blog_content}"
  elsif number == 2
    puts "2:作成されたブログを見る"
  elsif number == 3
    puts "3:ブログアプリを終了する"
    break
  else
    puts "1~3の数字を入力してください"
  end
end