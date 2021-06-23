#!/usr/bin/env ruby

list_of_ruby_files=Dir.glob("*.rb")#saving the names of all ruby files in list
#iterating that list using each do
list_of_ruby_files.each do |i| 
    read = IO.read i
    IO.write i, "#!/usr/bin/env ruby\n" + read
end