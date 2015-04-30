class MissingNumber

  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def find_missing_number
    test = (@array.first..@array.last).to_a
    @test2 = test-@array
  end

  def message
    if @test2.length == 0
      pust "No Missing Values"
    else
      puts "Missing values are #{@test2}"
    end
  end

end

test = MissingNumber.new([1,2,13])
test.find_missing_number
test.message

test2 = MissingNumber.new([1,2,13,45])
test2.find_missing_number
test2.message

test3 = MissingNumber.new([1,8])
test3.find_missing_number
test3.message



