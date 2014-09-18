def oddevensum(array)
  oddsum=0
  evensum=0
  odd, even = array.partition { |x| x % 2 == 1 }
  odd.each do |x|
    oddsum+=x
  end
  even.each do |y|
    evensum+=y
  end
  puts "The sum of #{odd.length} odd numbers is #{oddsum}"
  puts "The sum of #{even.length} even numbers is #{evensum}"
end

oddevensum([1,2,3,4,5,6,7,8,9,10,11])
