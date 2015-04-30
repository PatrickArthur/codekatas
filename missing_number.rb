class FindMissingNumber

  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def missing_number
    test = (@array.first..@array.last).to_a
    test2 = test-@array
    if test2.length == 0
      pust "No Missing Values"
    else
      puts "Missing values are #{test2}"
    end
  end

end

test = FindMissingNumber.new([1,2,13])
test.missing_number

test2 = FindMissingNumber.new([1,2,13,45])
test2.missing_number

test3 = FindMissingNumber.new([1,8])
test3.missing_number



