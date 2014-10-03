def ceasercipher(string)
  @number=Random.rand(1..26)
  puts @number
  @array=string.split("")
  @array2=[]
  @h = {}
  v = 0
  ('A'..'Z').each do |c|
    if c == 'A'
      v = 0
    else
      v+=1
    end
    @h[c] = v
  end
end

def checkvals
  @array.each do |x|
    @h.each do |k,v|
      if x == k && v+@number <= 25
        position=v+@number
        @array2 << @h.keys[position]
      elsif x == k && v+@number >=26
        position2=(v+@number)-26
        @array2 << @h.keys[position2]
      end
    end
  end
  puts @array2.join("")
end

ceasercipher("HI")
checkvals


