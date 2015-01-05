def beer_bottles(n)
  n.downto(1) do |i|
    puts "#{i} Bottles of beer on the wall. #{i} Bottles of beer. Take one down pass it around."
  end

  puts "No Bottles of beer on the wall."
end

beer_bottles(5)
