number = 600851475143
factors = []

def find_largest_prime_factor(number, factors)
  number.times do |x|
    if (number % (x + 2)).zero?
      factor = number / (x + 2)
      factors.push(factor) if factor > 1
      find_largest_prime_factor(factor, factors)
      return factor
    end
  end
end

find_largest_prime_factor(number, factors)

puts "Result: #{factors.last}"