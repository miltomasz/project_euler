
def multiple_of?(start_number)
  3.upto(19) do |d|
    return false unless start_number % d == 0
  end
  true
end

start_number = 2520
result = 0

while true
  if multiple_of?(start_number)
    result = start_number
    break
  end
  start_number += 20
end

puts "Result: #{result}"
