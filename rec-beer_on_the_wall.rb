def beer_bottles(n)
  puts "#{n} Bottles of beer on the wall. #{n} Bottles of beer. Take one down pass it around. "
  if n == 1
    puts "No Bottles of beer on the wall."
  else
    beer_bottles(n-1)
  end
end

beer_bottles(5)
