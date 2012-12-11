sum = 0
(0...1000).each { |number| sum += number if number % 3 == 0 || number % 5 == 0 }

puts "Result #{sum}"