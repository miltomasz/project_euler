diff = 0
i = 1

while i < 100
  (i + 1).upto(100) do |d|
    diff += 2 * i * d
  end
  i += 1
end 

puts "#{diff}"