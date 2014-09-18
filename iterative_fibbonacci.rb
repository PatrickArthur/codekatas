def fibonacci_iterative(n)
  fib_numbers = [0, 1]
  iterate = n-1
  iterate.times do
    number = fib_numbers[-2] + fib_numbers[-1]
    fib_numbers << number
  end
  puts fib_numbers[-1]
end

fibonacci_iterative(8)
