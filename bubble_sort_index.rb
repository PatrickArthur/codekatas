def bubble_sort(array)
  array.each_index do |first|
    array.each_index do |second|
      if array[first] < array[second]
        array[first], array[second] = array[second], array[first]
      end
    end
  end
end

bubble_sort([2,1,5,3])
