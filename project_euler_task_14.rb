def collatz(number)
  number.even? ? number / 2 : (3 * number) + 1
end

sequence_length = 0
starting_number = 0

1000000.downto(1) do |e|
  number = e
  index = 1
  
  while number > 1 
    number = collatz(number)
  	index += 1
  end

  if index > sequence_length
    sequence_length = index
    starting_number = e
  end
end

puts "Starting number: #{starting_number}"

