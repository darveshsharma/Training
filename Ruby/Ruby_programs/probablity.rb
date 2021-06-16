def probablity(array, no)
    count=0
    array.each do |i|
        if i <= no
            count +=1
        end
    end
    puts count.fdiv(array.length) *100
end

array=[5, 1, 8, 9]
no = 6

probablity array,no