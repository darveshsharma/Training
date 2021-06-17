def filter_array(array)
    num_list=[]
    array.each do |i|
        if i.class == 1.class
            num_list=num_list.push(i)
        end
    end
    print num_list
    puts
end

filter_array([1, 2, 3, "a", "b", 4])

filter_array(["A", 0, "Edabit", 1729, "Ruby", "1729"])

filter_array(["Nothing", "here"])