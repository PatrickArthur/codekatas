
def input
  @numbers = []
  puts 'Enter numbers you want to see the sum of odd and sum of even'
  input = gets.chomp
  while input != ""
    @numbers << input.to_i
    input = gets.chomp
  end
  @odd=[]
  @even=[]
  @sumodd=0
  @sumeven=0
end


def oddeven
  @numbers.each do |x|
    if x%2 == 0
      @even<<x
    else
      @odd<<x
    end
  end
end

def oddevensum
  @odd.each do |y|
    @sumodd+=y
  end
  @even.each do |z|
    @sumeven+=z
  end
  puts "the sum of #{@odd} is #{@sumodd}"
  puts "the sum of #{@even} is #{@sumeven}"
end

input
oddeven
oddevensum
