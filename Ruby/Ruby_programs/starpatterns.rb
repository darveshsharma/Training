def star_pattern_right(no_of_rows)
    i=0
    while i < no_of_rows do
        print "*" * (i+1)
        i+=1
        print "\n"
    end

end

def star_pattern_left(no_of_rows)
    i=0 
    while i < no_of_rows do
        print " " * (no_of_rows -1 -i)
        print "*" * (i+1)
        i +=1
        print "\n"
    end
end

no_of_rows=gets.to_i
star_pattern_right no_of_rows
print("2nd star pattern\n")
star_pattern_left no_of_rows