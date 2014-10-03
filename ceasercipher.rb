def ceasercipher(string,num)
  @number=num
  @array=string.split("")
  @array2=[]
  @h = {}
  v = 0
  ('A'..'Z').each do |c|
    v+=1
    @h[c] = v
  end
end

def checkvals
  @h.each do |k,v|
    @array.each do |x|
      if x == k && v+@number <= 26
        position=v+@number
        @array2 << @h.keys[position-1]
      elsif x == k && v+@number > 26
        position2=(v+@number)-26
        @array2 << @h.keys[position2-1]
      end
    end
  end
  puts @array2.join("")
end

ceasercipher("HI",2)
checkvals

ceasercipher("HI",20)
checkvals
