def prime?(number)
  root = Math.sqrt(number)
  2.upto(root) do |n|
    return false if (number % n).zero?
  end
  true
end

prime_numbers = []
number = 2 

while prime_numbers.length < 10001
  if prime?(number)
    prime_numbers.push(number)
  end
  number += 1
end

puts "Result: #{prime_numbers.last}"