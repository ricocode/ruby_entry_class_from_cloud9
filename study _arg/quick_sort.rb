def quick_sort(sort_number)
  return sort_number if sort_number.size < 2
  target = sort_number.shift
  smallers = []
  biggers = []
  
  sort_number.each do |sort_numbers|
      if sort_numbers < target
          smallers << sort_numbers
      else
          biggers << sort_numbers
      end
  end
  quick_sort(smallers) + [target] + quick_sort(biggers)
end

numbers = [4, 8, 6, 5, 2, 1, 3, 9, 7]

p quick_sort(numbers)