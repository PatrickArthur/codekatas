def combinations
  coins = [1, 5, 7, 9, 11]
  all_coins = []
  for i in 1..coins.length()
    all_coins << coins.combination(i).to_a
  end
  return all_coins.flatten(1)
end

def coincount(num)
  all_coins = combinations()
  length_array = []
  while !all_coins.empty?
    arr = all_coins.pop
    sum = 0
    arr.each do |x|
      sum += x
    end
    if sum == num
      length_array << arr.length
    end
  end
  return "There are #{length_array.min} coins that add to #{num} "
end


puts coincount(16)
puts coincount(25)
puts coincount(6)
