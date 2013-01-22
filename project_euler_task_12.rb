def prime?(number)
  root = Math.sqrt(number)
  2.upto(root) do |n|
    return false if (number % n).zero?
  end
  true
end

def prime_factors(number)
  factor = 2
  hash = Hash.new(0)
  while number > 1
    until (number % factor).zero?; factor += 1; end
    hash[factor] += 1
    number /= factor
  end
  hash
end

def calc_divisors(hash)
  result = 1
  hash.each { |k, v| result *= v + 1 }
  result
end

index = 0
triangular_number = 0

while calc_divisors(prime_factors(triangular_number)) <= 500
  triangular_number += index
  index += 1
end

puts "#{triangular_number}"


