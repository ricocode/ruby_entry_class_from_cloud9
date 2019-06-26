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
   numbers[indexMin],numbers[i]=numbers[i],numbers[indexMin]
   i += 1
   end
  p(numbers) 
end 
 
selection_sort([1000,4809,73090,8992,779,24376,6728374,2,99,3])