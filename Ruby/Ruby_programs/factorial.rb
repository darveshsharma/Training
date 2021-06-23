#!/usr/bin/env ruby
def is_factorial(int,i=1)
    int=int.to_f
    if int/i> 1
        int=int/i
        i +=1
        is_factorial(int,i)
    elsif int/i == 1
        puts "True factorial of #{i}!"
    else
        puts "False"
    end
end

is_factorial(2)
is_factorial(27)
is_factorial(24)
is_factorial(120)
is_factorial(720)
is_factorial(20)
is_factorial(6)