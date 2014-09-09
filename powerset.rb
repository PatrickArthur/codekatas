#### Ruby program that demonstrates the usage of
#### powersets. Program takes an array of numbers(num) and
#### creates a multidimentional array from an array called set for
###  a comparison array of
#### all possible combinations of integers. It then iterates through
#### the array of numbers you want to check and see if any combination of
#### numbers in set add up to it.


def powerset(set)
  return [set] if set.empty?
  p = set.pop
  subset = powerset(set)
  @test = subset | subset.map { |x| x | [p] }
end


def checknum(num)
  sum=0
  list=[]
  @test.each do |x|
    x.each do |y|
      sum+=y
      list<<y
    end
    num.each do |z|
      if sum == z
        puts "The sum of #{list.to_s} is #{sum} equal to #{z}"
      end
    end
    sum=0
    list=[]
  end
end

powerset([1,2,3,4,5])
checknum([4,5,6])
