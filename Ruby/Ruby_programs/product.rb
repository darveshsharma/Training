def total_sales(array,check)
    sum=0
    for i in 0 ... (array[0].length)
        if array[0][i] == check
            for j in 1 ... (array.length)
                sum=sum+array[j][i]
            end
        end
    end
    if sum == 0
        puts "product not found"
    else
        puts sum
    end
end

total_sales([
  ["A", "B", "C"],
  [ 2 ,  7 ,  1 ],
  [ 3 ,  6 ,  6 ],
  [ 4 ,  5 ,  5 ]
], "A")

total_sales([
  ["A", "B", "C"],
  [ 2 ,  7 ,  1 ],
  [ 3 ,  6 ,  6 ],
  [ 4 ,  5 ,  5 ]
], "C")

total_sales([
  ["A", "B", "C"],
  [ 2 ,  7 ,  1 ],
  [ 3 ,  6 ,  6 ],
  [ 4 ,  5 ,  5 ]
], "D")

total_sales([
  ['W', 'X', 'Y', 'Z'],
  [ 3 ,  5 ,  7 ,  1 ],
  [ 4 ,  5 ,  2 ,  3 ]],"Z")

total_sales([
    ['R', 'T', 'V', 'W', 'C'],
    [ 2 ,  3 ,  7 ,  7 ,  4 ],
    [ 8 ,  5 ,  2 ,  9 ,  0 ],
    [ 2 ,  5 ,  8 ,  7 ,  4 ],
    [ 5 ,  3 ,  7 ,  2 ,  3 ]],"C")