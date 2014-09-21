
def swap(string)
  puts string
  array=string.split("")
  array2=[]
  array.each do |x|
    if x == x.upcase
      array2<<x.downcase
    elsif x == x.downcase
      array2<<x.upcase
    end
  end
  puts array2.join("")
end

swap("6Hello4 -8World, 7 yes3")

