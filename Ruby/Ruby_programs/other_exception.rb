#!/user/bin/env ruby

puts "this is just a rescue program"
begin  
    print a 
rescue Exception => e  
    puts "the error is #{e.message}"  
end  
puts "don't worry program is still running"

