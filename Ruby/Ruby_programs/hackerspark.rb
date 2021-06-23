#!/usr/bin/env ruby
def hacker_speak(code)
    code.each_char do |i|
        if i=="a"
            print '4'
        elsif i=='e'
            print '3'
        elsif i=='i'
            print '1'
        elsif i=='o'
            print '0'
        elsif i=='s'
            print '5'
        else
            print i
        end
    end
    puts 
end

hacker_speak "hacker rank"