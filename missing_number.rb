def missing_number(array)
  test = (array.first..array.last).to_a
  test2 = test-array
  puts test2
end

missing_number([1,2,9,10])
