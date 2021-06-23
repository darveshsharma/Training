#!/usr/bin/env ruby

begin 
    file=open("not exist","r")
    if file 
        puts "file opened successfully"
    end
rescue
    file =STDIN
end
print file,"==",STDIN, "\n"


fname="not exist"
begin
    file = open(fname,"r")
    if file
       puts "File opened successfully"
    end
 rescue
    puts "file does not exist"
    fname="temp.txt"
    retry
 end



 begin
    file=open("not exist","r")
 rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
 ensure
    puts "Ensuring execution"
 end