def bigger(x,y)
     if x>y
      return x
     else
      return y
     end
end

def biggest(x,y,z)
  bigger_one=bigger(x,y)
  if bigger_one == x
  biggest = bigger(x,z)
  elsif bigger_one == y
  biggest = bigger(y,z)
  end
  return biggest
end

def median(x,y,z)

biggest_number = biggest(x,y,z)
  if biggest_number == a
  median_number = bigger(b,c)
  elsif biggest_number == b
  median_number = bigger(a,c)   
  elsif biggest_number == c
  median_number = bigger(a,b)
  end
  return median_number
end

puts(median(5,7,2))


#house = [{price:"2000万",location: "東京都",size:"80坪"},{price:"1500万",location:"千葉県",size:"50坪"},{price:"800万",location:"埼玉県",size:"100坪"}]
#p house [2][:price],house[2][:size]

#p house [0][:size]
#p house [1][:location]


#house = {price:"2000万",location:"東京都",size:"100坪"}
#p house[:location]


#season = ["春","夏","秋"]
#season << "冬"
#p season[2]


#def info(name,age)
#    puts "#{name} #{age}"
#end

#info("花子",5)



#puts "DIVE INTO CODE"
#puts "私は受講生です"
#puts "30歳です"