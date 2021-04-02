def different_elements?(a1, a2)
    a1.each_index {|i| return false if a1[i] == a2[i]}
    return true
end

programmers = ["Isaac", "Kyle", "Ryan", "Clyde", "Jesse", "Ben"]
programmers_to_review = programmers.shuffle

until(different_elements?(programmers, programmers_to_review))
    programmers_to_review.shuffle!
end

programmers.each_index {|i| puts "#{programmers[i]} => #{programmers_to_review[i]}"}

