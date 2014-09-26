def fizzBuzzFifty
  (1..50).each do |x|
    if (x % 3 == 0 && x % 5 == 0)
      puts "BostonNashville"
    elsif x % 3 == 0
      puts "Boston"
    elsif x % 5 == 0
      puts "Nashville"
    else
      puts x
    end
  end
end

fizzBuzzFifty
