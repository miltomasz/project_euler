number = 600851475143

def find_largest_prime_factor(number)
  factor = 0
  number.times do |x|
    if number % (x + 2) == 0
      factor = number / (x + 2)
      find_largest_prime_factor(factor)
      # puts "#{factor}"
      break
    end
  end
  factor
end

puts "#{find_largest_prime_factor(number)}"