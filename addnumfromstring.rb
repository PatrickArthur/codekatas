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




