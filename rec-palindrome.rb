def palindrome(start_str)
  if start_str.length <= 1
    return true
  else
    if start_str[0] == start_str[-1]
      palindrome(start_str[1..-2])
    else
      return false
    end
  end
end

puts palindrome("Hello") #=> false
puts palindrome("racecar") #=> true
puts palindrome("ra") #=> false
puts palindrome("ll") #=> true
