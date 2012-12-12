def fib(number)
  return 1 if number == 1
  return 2 if number == 2
  return fib(number - 1) + fib(number - 2)
end

def find_evans_to_sum(max_sum)
  sum_evens = 0
  index = 1
  begin
    fib_number = fib(index)
    sum_evens += fib_number if fib_number % 2 == 0
    index += 1
  end while fib_number < max_sum
  sum_evens
end

puts "Result: #{find_evans_to_sum(4000000)}"


