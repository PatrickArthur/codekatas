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


def test(array,num)
  i=1
  sum=0
  array2=[]
  while i<=array.length
    array2<<array.combination(i).to_a
    i+=1
  end
  array2.each do |x|
    x.each do |y|
      y.each do |z|
        sum+=z
        if sum == num
          puts y
        end
      end
      sum=0
    end
  end
end

test([1,2,3,4,5,6,7,8],6)






def orderstringnum(string)
  @array=string.split("")
  @num=[]
  @lett=[]
  @num2=[]
  @sum=0
end

def split
  @array.each do |x|
    if x.to_i>=1
      @num<<x
    else
      @lett<<x
    end
  end
end

def check
  @num.each do |y|
    @num2<<y.to_i
  end
  @num2.each do |z|
    @sum+=z
  end
end

def printoutput
  puts @sum
  puts @lett.length
  puts @sum/@lett.length
end

orderstringnum("1h2e3l4l05")
split
check
printoutput



