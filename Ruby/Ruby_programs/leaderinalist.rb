#!/usr/bin/env ruby
def leader(list)
    leader_list=[]
    for i in 0...(list.length - 1)
        for j in i..(list.length - 1)
            flag=1
            if list[i]<list[j]
                flag=0
                break
            end
        end
        if flag == 1
            leader_list=leader_list.push(list[i])
        end
    end
    leader_list=leader_list.push(list[list.length - 1])
    print leader_list
    puts
end

leader([2, 3, 20, 15, 8, 3])
leader([2, 3, 20, 15, 8, 25, 3])
leader([1, 2, 3, 4, 5])
leader([8, 7, 1, 2, 10, 3, 5])