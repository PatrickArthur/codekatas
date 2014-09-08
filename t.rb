a=[[1,2,3],[4,5,6]]
d=0

a.each do |b|
  b.each do |c|
    d=d+c
  end
end
puts d

