def flatten_a_list(list)
    a=[]
    list.each do |i|
        if i.class == list.class
            flatten_a_list(i)
        else
            a.push(i)
        end
    end
    print a
end

flatten_a_list [1, 2, [3, [4, 5], 6], 7, 8]
