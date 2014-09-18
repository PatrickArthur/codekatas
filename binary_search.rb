def search(array,val)
  left = 0
  right = (array.length)-1
  while left <= right
    mid = (left + right)/2
    midval = array[mid]
    if midval < val
      left = mid + 1
    elsif midval > val
      right = mid - 1
    else
      return mid
    end
  end
  puts mid
end

search([1,2,3,4,5,6,8,9],8)

