#!/usr/bin/env ruby
def spoonerise(str)
    x=""
    y=[]
    a,b=str.split(" ")
    a=a.chars
    b=b.chars
    x=a[0]
    a[0]=b[0]
    b[0]=x
    y=y.push(a.join,b.join)
    puts y.join(" ")
end
spoonerise("history lecture")
spoonerise("loud noises")
spoonerise("chow mein")
spoonerise("edabit rules!")