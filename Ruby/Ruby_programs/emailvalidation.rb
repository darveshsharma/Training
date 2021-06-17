def validate_email(string)
    re=/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    if string =~ re
        puts 'True'
    else 
        puts 'False'
    end
end

validate_email("@gmail.com")
validate_email("hello.gmail@com")
validate_email("gmail")
validate_email("hello@gmail")
validate_email("hello@edabit.com")