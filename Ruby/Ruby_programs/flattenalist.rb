$a=Array.new
def flatten_a_list(list)
    list.each do |i|
        if i.class == list.class
            flatten_a_list(i)
        else
            $a.push(i)
        end
    end
    return $a
end

x=[]
x=flatten_a_list [1, 2, [3, 4, 5], [6, 7, 8]]
print x