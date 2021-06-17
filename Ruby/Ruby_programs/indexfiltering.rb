def index_filter(array,str)
    n=""
    str=str.downcase
    str=str.chars
    array.each do |i|
        n=n+str[i]
    end
    puts n
end

index_filter([2, 3, 8, 11], "Autumn in New York")
index_filter([0, 1, 5, 7, 4, 2], "Cry me a river")
index_filter([9, -9, 2, 27, 36, 6, 5, 13, -1, 2, 0, 30, 2], 
  "That's life, I've got you under my skin")
