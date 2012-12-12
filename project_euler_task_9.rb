def only_triplet_for(number)
  1.upto(number) do |a|
    2.upto(number) do |b|
      c = number - (a + b)
      return a*b*c if c**2 == a**2 + b**2
    end
  end
end

puts "Result: #{only_triplet_for(1000)}"
