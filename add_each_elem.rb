#Method takes array parameter and adds each element
# of array to get subtotal and total sum.


def sumarr(list)
  list.sort
  total = 0
  i=0
  while i<list.length
    len=list.length-i
    list[0..len].each do |x|
      total+=x
      total2=total-x
      puts "#{x} plus #{total2} equals #{total}"
      i+=1
    end
  end
end

sumarr([1,2,3,4,5,6,7,8,9,10])