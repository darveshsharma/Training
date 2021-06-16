def anagrams(string1,string2)
    string1=string1.downcase.chars.sort.join
    string2=string2.downcase.chars.sort.join
    puts string1 == (string2)
end

anagrams "Nope", "Note"
