array=[1,2,3]
combo=[]

array.each do |x|
combo<<array.combination(x).to_a
end

combo.each do |y|
  test=[]
  test<<y
  # y.each do |z|
    # z.each do |i|
    #   sum=0
    #   sum+=i
    # end
  # end
end

puts test.to_s

