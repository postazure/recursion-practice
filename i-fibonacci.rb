def fibonacci(n)
  prev = [0,1]
  2.upto(n-1) do
    p prev
    prev << prev[-2] + prev[-1]
  end

  return prev.last
end

puts fibonacci(5)
