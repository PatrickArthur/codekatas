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
