def only_triplet_for_1000
  1.upto(1000) do |a|
    2.upto(1000) do |b|
      c = 1000 - (a + b)
      return a*b*c if c**2 == a**2 + b**2
    end
  end
end

puts "#{only_triplet_for_1000()}"
