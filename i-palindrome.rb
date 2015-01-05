def palindrome(some_str)
  reversed_str = some_str.clone
  (reversed_str.length/2).times do |i|
    reversed_str[i], reversed_str[-(i+1)] = reversed_str[-(i+1)], reversed_str[i]
  end

  reversed_str == some_str
end

puts palindrome("Hello") #=> false
puts palindrome("racecar") #=> true
