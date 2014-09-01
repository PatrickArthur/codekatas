def arrmode(list)
  @hash=Hash.new(0)
  list.each do |x|
    @hash[x]+=1
  end
end

def vals
  @hash.each do |k,v|
    if v > 1
      puts "#{k} has #{v} dups"
    end
    if v == @hash.values.max
      puts "the mode is #{k}"
    end
  end
end


arrmode([1,2,2,3,3,3,4,5,5,5,5,5,6,6,7,7,7,7,7,7,7,7,10])
vals
