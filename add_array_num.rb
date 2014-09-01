## Method that looks to see if combinations of array
## add up to n


def addarray(n,list)
  for i in 0..list.length-1
    total=0
    for p in 0..list.length-1
      current=list[i]+list[p]
      if current==n
        puts "#{list[i]} added to #{list[p]} equals #{n}"
      else
        total=total+current
        if total==n
          for q in 0..p
            put "#{list[q]} + "
          end
          puts "is equal to #{n}"
        end
      end
    end
  end
end

addarray(6,[1,2,3,4])
