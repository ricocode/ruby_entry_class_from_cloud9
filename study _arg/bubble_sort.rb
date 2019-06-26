def bubble_sort(numbers)
  i=0
  for i in 0..((numbers.length)-1)
    p(numbers)
    puts("#{i+1}回目の探索です")
    for j in 1..((numbers.length)-i-1)
      if numbers[j-1]>numbers[j]
       numbers[j-1],numbers[j]=numbers[j],numbers[j-1]
      end
    end
  end
end
 
bubble_sort([100,98,105,3,75,99,50,25,4,1])
