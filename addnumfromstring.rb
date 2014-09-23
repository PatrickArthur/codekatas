def addnum(string)
  array=string.split("")
  array2=[]
  sum=0
  array.each do |x|
    if x.to_i>=1
      array2<<x.to_i
    end
  end
  array2.each do |y|
    sum+=y
  end
  puts sum
end

addnum('88Hello 1World!')



def fac(num)
  test = 0
  i = 1
  while i<num
    test = num * (num-i)
    i+=1
    puts test
  end
end

fac(4)
