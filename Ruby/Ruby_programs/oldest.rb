def oldest(hash)
    max_age=0
    max_age_person=""
    hash.each do |key,value|
        if value >max_age
            max_age=value
            max_age_person=key
        end
    end
    puts max_age_person
end

oldest({
  "Emma" => 71,
  "Jack" => 45,
  "Amy" => 15,
  "Ben" => 29
})

oldest({
  "Max" => 9,
  "Josh" => 13,
  "Sam" => 48,
  "Anne" => 33
})