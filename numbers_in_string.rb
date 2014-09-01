#Using the Ruby language, have the function numstr(string)
#take the str parameter, search for all the numbers in the
#string, add them together, then return that final number
#divided by the total amount of letters in the string.
#For example: if string is "Hello6 9World 2, Nic8e D7ay!"
#the output should be 2. First if you add up all the numbers,
# 6 + 9 + 2 + 8 + 7 you get 32. Then there are
#17 letters in the string. 32 / 17 = 1.882,
#and the final answer should be rounded to the
#nearest whole number, so the answer is 2.
#Only single digit numbers separated by spaces will be
#used throughout the whole string
#(So this won't ever be the case: hello44444 world).
#Each string will also have at least one letter.


def numstr(string)
  list2=string.delete(' ').delete('.')
  .delete('?').delete(',').delete('!').split("")
  letters, @numbers = list2.partition{ |x| x.to_i <1}
  @countsum=[]
  @sum=0
  @len=letters.length
end

def getsums
  @numbers.each do |x|
    @countsum<<x.to_i
  end
  @countsum.each do |y|
    @sum+=y
  end
end

def printnum
  letct=@sum/@len.to_f
  puts "There are #{@len} letters"
  puts "The sum of numbers is #{@sum}"
  puts "The sum divided by letter count is #{sprintf( "%.03f" , letct )}"
end


numstr("Hello6 9World 2, Nic8e D7ay!")
getsums
printnum
