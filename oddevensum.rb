
def addnum
  @numbers = []
  puts 'Enter numbers you want to see the sum of odd and sum of even'
  input = gets.chomp
  while input != ""
    @numbers << input.to_i
    input = gets.chomp
  end
end

def partoddeven
  @oddsum=0
  @evensum=0
  @odd, @even = @numbers.partition { |x| x % 2 == 1 }
end

def oddevensum
  @odd.each do |x|
    @oddsum+=x
  end
  @even.each do |y|
    @evensum+=y
  end
end

def report
  puts "There are #{@odd.length} odd numbers and their sum is #{@oddsum}"
  puts "There are  #{@even.length} even numbers and their sum is #{@evensum}"
end

addnum
partoddeven
oddevensum
report



