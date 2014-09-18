def arrmode(list)
  @hash=Hash.new(0)
  list.each do |x|
    @hash[x]+=1
  end
end

def getavg(list)
  sum=0
  @avg=0
  list.each do |x|
    sum+=x
    @avg=(sum/list.length)
  end
end

def vals
  @hash.each do |k,v|
    if v > 1
      puts "#{k} has #{v} dups"
    else
      puts "#{k} has no dups"
    end
    if v == @hash.values.max
      puts "the mode is #{k}"
    end
  end
  puts "the average is #{@avg}"
end

array = [1,1,2,3,4]

arrmode(array)
getavg(array)
vals
