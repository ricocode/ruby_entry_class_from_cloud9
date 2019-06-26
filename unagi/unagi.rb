# 下記のコードが何をしているかを説明してください・・・
（A）
seats_and_gloups = gets.split(/\s/)
#[説明: 受入可能席数、グループ数の設定
#コンソールを人数とグループの入力待ちにし、入力内容を空白(/\s/)で区切り取得する]

# 下記のコードが何をしているかを説明してください・・・
#（B）
empty_seat = [*1..(seats_and_gloups[0].to_i)]
#[説明: 空いている席数
#入力されたseats_and_gloups の配列0の内容を数値で取得し配列として 変数 empty_seat に格納する   ]


# 下記のコードが何をしているかを説明してください・・・
（C）
seats_count = empty_seat.count
#[説明: 空席数をカウント
#席数 (配列)empty_seatをcountメソッドを付けて変数seats_count に代入する   ]


# 下記のコードが何をしているかを説明してください・・・
#（D）
number_of_visitors = seats_and_gloups[1].to_i
#[説明:   来店者数のカウント
#seats_and_gloups[1].to_i でグループ数を数値で取得し 変数number_of_visitorsに格納する]


# 下記のコードが何をしているかを説明してください・・・
#（E）
[*1..number_of_visitors].each do
  # 下記のコードが何をしているかを説明してください・・・
#[説明:   入店する度にnumber_of_visitors = seats_and_gloups[1].to_iをループさせる  ]

#（F）
  used_seats = gets.split(/\s/)
#[説明:  コンソールから埋まった席を取得し変数used_seatsに代入する  ]


  # 下記のコードが何をしているかを説明してください・・・
#（G）
  users = used_seats[0].to_i
#[説明: 現在の来店客数をused_seats0から数値で取得し変数usersとする   ]


  # 下記のコードが何をしているかを説明してください・・・（H）
  seating_number = used_seats[1].to_i
#[説明:  座席番号をused_seats[1]から取得する   ]


  # 下記のコードが何をしているかを説明してください・・・（I）
  fill_last_number = ((seating_number + users) - 1)

  # 下記のコードが何をしているかを説明してください・・・（J）
  if fill_last_number > seats_count
    # 下記のコードが何をしているかを説明してください・・・（K）
    # （下記のコードは理解が難しいので、下記にヒントを載せます）

    # 「今回のグループが最後に着席する席の番号」 = 「今回のグループが最後に着席する席の番号」-「そもそもの座席の総数」となる（円卓だから）。
    # 例えば、fill_last_number == 13で、seats_countが12だったら、1 = 13 - 12となり、席番号が１の席に最後の人間が座る。
    fill_last_number = fill_last_number - seats_count
    # （下記のコードは理解が難しいので、下記にヒントを載せます）

    # next_seat_candidateは、「その席に既に人が座っていないか？」を判断するための配列
    # ([*1..seats_count] - empty_seat)は、（「全ての席」-　「まだ人が座っていない席」）の意味。つまり、「既に人が座っている席」の数字が、([*1..seats_count] - empty_seat)
    # [*seating_number..seats_count]は、[*「今回のグループが最初に着席する席の番号」..「最後の席の番号」]の意味
    # [*1..fill_last_number]は、[*「１（最初の席）」..「今回のグループが最後に着席する席の番号」]の意味
    # なので、next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..seats_count] + [*1..fill_last_number]は、
    # next_seat_candidate = 「既に人が座っている席」+ [*「今回のグループが最初に着席する席の番号」..「最後の席の番号」] + [*「１（最初の席）」..「今回のグループが最後に着席する席の番号」]となる。
    # つまり、 next_seat_candidateの配列の中に、同じ数字が含まれていれば、「既に埋まっている席に新たなグループの人間が座ろうとしている」ということになる
    next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..seats_count] + [*1..fill_last_number]
  else
    # 下記のコードが何をしているかを説明してください・・・（L）
    # （下記のコードは理解が難しいので、下記にヒントを載せます）

    # next_seat_candidate = 「既に人が座っている席」+ [*「今回のグループが最初に着席する席の番号」..「今回のグループが最後に着席する席の番号」]となる
    # つまり、 next_seat_candidateの配列の中に、同じ数字が含まれていれば、「既に埋まっている席に新たなグループの人間が座ろうとしている」ということになる    
    next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..fill_last_number]
  end

  # 下記のコードが何をしているかを説明してください・・・（M）
  if next_seat_candidate.count == next_seat_candidate.uniq.count
    # 下記のコードが何をしているかを説明してください・・・（N）
    if ((seating_number + users) - 1) > seats_count
      # 下記の二行のコードが何をしているかを説明してください・・・（O）
      empty_seat = empty_seat - [*1..fill_last_number]
      empty_seat = empty_seat - [*seating_number..seats_count]
    else
      # 下記のコードが何をしているかを説明してください・・・（P）
      empty_seat = empty_seat - [*seating_number..fill_last_number]
    end
  end
end

# 下記のコードが何をしているかを説明してください・・・（Q）
puts seats_count - empty_seat.count
