#### Ruby program that demonstrates the usage of
#### powersets. Program takes an array of numbers(num) and
#### creates a multidimentional array from an array called set for
###  a comparison array of
#### all possible combinations of integers. It then iterates through
#### the array of numbers you want to check and see if any combination of
#### numbers in set add up to it.



def numlist
  puts 'Enter numbers you want to see all combinations of sum, type done when finished'
  input = gets.chomp
  @num = input.to_i
end




def checklist
  @check = []
  puts 'Enter numbers you want to see combinations of, type done when finished'
  input = gets.chomp
  while input != "done"
    @check << input.to_i
    input = gets.chomp
  end
end

def powerset(set)
  return [set] if set.empty?
  p = set.pop
  subset = powerset(set)
  @test = subset | subset.map { |x| x | [p] }
end


def checknum
  list=[]
  sum=0
  hash=Hash.new(0)
  i=0
  @test.each do |x|
    x.each do |y|
      sum+=y
      list<<y
      if sum == @num
        i+=1
        hash[i]=list.to_s
        puts hash
      end
    end
    list=[]
    sum=0
  end
end


numlist
checklist
powerset(@check)
checknum
