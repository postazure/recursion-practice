def fibonacci(n)
  if n == 0 || n == 1
    return (n-1).abs
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end
end

puts fibonacci(5) #=> 5
puts fibonacci(6) #=> 8
