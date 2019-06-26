2

3

4

5

6

7

8

9

10

11

12

13

14

15

16

17

18

19

20

21

22

23

24

25

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
    puts "タイトル；#{blog_title}"
    puts "本文；#{blog_content}"
  elsif number == 3
    puts "3:ブログアプリを終了する"
    break
  else
    puts "1~3の数字を入力してください"
  end
end