def selection_sort(numbers)
  i = 0
   while i < (numbers.length)-1 do
   p(numbers)
   indexMin = i
   k=i+1
   while k < (numbers.length) do
    if numbers[k] < numbers[indexMin]
    indexMin = k
    end
   k += 1
   end
   i += 1
   end
  p(numbers) 
end 
 
selection_sort(1,4,7,0,77,2,67,2,99,3)