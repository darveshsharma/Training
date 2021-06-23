#!/usr/bin/env ruby
def extension(array)
    n_array=[]
    array.each do |i|
        x,y,z=i.partition(".")
        n_array.push(z)
    end
    print n_array
    puts
end
extension(["code.html", "code.css"])
extension(["project1.jpg", "project1.pdf", "project1.mp3"])
extension(["ruby.rb", "cplusplus.cpp", "python.py", "javascript.js"])