def missing_number(array)
  test = (array.first..array.last).to_a
  test2 = test-array
  if test2.length == 0
    pust "No Missing Values"
  else
    puts "Missing values are #{test2}"
  end
end

missing_number([1,2,13])
