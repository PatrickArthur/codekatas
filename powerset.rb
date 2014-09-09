#### Ruby program that demonstrates the usage of
#### powersets. Program takes a number and an array of
#### numbers and creates a multidimentional array of
#### all possible combinations of it. It then compares
#### the number num to see if any combination of
#### numbers in the array add up to it.


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
