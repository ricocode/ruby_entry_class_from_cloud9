puts "座席数と来店するグループ数を入力してください"

seats_and_gloups = gets.split(/\s/)
puts "seats_and_gloups #{seats_and_gloups}"
empty_seat = [*1..(seats_and_gloups[0].to_i)]
puts "empty_seat #{empty_seat}"
seats_count = empty_seat.count
puts "seats_count #{seats_count}"
number_of_visitors = seats_and_gloups[1].to_i
puts "number_of_visitors #{number_of_visitors}"
[*1..number_of_visitors].each do
puts "each #{[*1..number_of_visitors]}"

puts "来店者数と座席番号を入力してください"
used_seats = gets.split(/\s/)
puts "used_seats #{used_seats}"

users = used_seats[0].to_i
puts "users #{users}"

seating_number = used_seats[1].to_i
puts "seating_number #{seating_number}"

fill_last_number = ((seating_number + users) - 1)
puts  "fill_last_number #{fill_last_number}"

if fill_last_number > seats_count
  fill_last_number = fill_last_number - seats_count
   puts "fill_last_number #{fill_last_number}"
  next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..seats_count] + [*1..fill_last_number]
   puts "next_seat_candidate #{next_seat_candidate}"
else 
  next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..fill_last_number]
   puts "next_seat_candidate #{next_seat_candidate}"
end

if next_seat_candidate.count == next_seat_candidate.uniq.count
  if ((seating_number + users) - 1) > seats_count
      empty_seat = empty_seat - [*1..fill_last_number]
      empty_seat = empty_seat - [*seating_number..seats_count]
      puts "empty_seat #{empty_seat}"
  else
      empty_seat = empty_seat - [*seating_number..fill_last_number]
      puts "empty_seat #{empty_seat}"
  end
  end
end

puts seats_count - empty_seat.count