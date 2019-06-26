def add(n,y)
    sum = n + y
    if sum < 50
        return "50より小さい"
    else
        return "50以上です"
    end
end
        
puts add(20,30)



#def division(n,y)
#    if y == 0
#        return "割れないよ"
#    end
#    n / y
#end

#puts division(2,0)


#dic = ["nakao", "shibata", "matsumoto"]
#p dic.include?("matsumoto")


#test = "中身を変数testに入れます"
#p test.empty?


#def add(n,y)
#    n + y
#    return n
#end

#puts add(2,3)

#→５ではなく、nの値2が戻される 