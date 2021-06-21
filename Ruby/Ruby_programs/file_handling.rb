require 'csv'
new_file=CSV.read("temp.csv")

puts "file without changing"

print new_file

CSV.open("temp.csv","a") do |csv|
    csv << [8,"kiwi"]
end

new_file1=CSV.read("temp.csv")

puts "file after changing"

print "\n#{new_file1}"

puts "the item added #{new_file1.last}"