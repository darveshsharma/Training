def Transform_upvotes(string)
    array =[]
    string=string.split
    string.each do |i|
        a,b=i.partition("k")
        b=b.gsub("k","1000")
        a=a.to_f
        b=b.to_f
        if b == 1000.0
            m=a*b
            m=m.to_i
        else
            m=a
            m=m.to_i
        end
        array.push(m)
    end
    print array
    puts
end
Transform_upvotes "6.8k 13.5k"
Transform_upvotes "20.3k 3.8k 7.7k 992"
Transform_upvotes "5.5k 8.9k 32"