def different_digits?(x, y, map = {})
  x.to_s.each_char { |e| map[e] = nil }
  y.to_s.each_char { |e| map[e] = nil }
  map.size == 3
end

def three_digits?(x, y)
  x.to_s.length == 3 && y.to_s.length == 3
end

def palindrome?(string)
  string == string.reverse
end

result = 0

999.downto(1) do |x|
  break if 999.downto(1) do |y|
    result = (x * y).to_s
    break if palindrome?(result) && different_digits?(x, y) && three_digits?(x, y)
  end == nil
end

puts "Result: #{result}"