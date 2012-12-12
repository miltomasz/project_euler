def prime?(number)
  root = Math.sqrt(number)
  2.upto(root) do |n|
    return false if (number % n).zero?
  end
  true
end

sum = 0

2.upto(2000000) do |n|
  sum += n if prime?(n)
end

puts "Result: #{sum}"