def bubble_sort(string)
  array=string.split("")
  array.each_index do |first|
    array.each_index do |second|
      if array[first] < array[second]
        array[first], array[second] = array[second], array[first]
      end
    end
  end
  puts array
end

bubble_sort("hello")
