def prime?(number)
  root = Math.sqrt(number)
  2.upto(root) do |n|
    return false if (number % n).zero?
  end
  true
end

sum = 0

2.upto(2000000) do |n|
  if n.odd?
    sum += n if prime?(n)
  end
end

puts "Result: #{sum}"