def stock_picker(prices)
    i=0
    max=0
   
    while i<prices.length-2
        j=i+1
        while j<=prices.length-1
            profit = prices[i]-prices[j]
            profit =profit.abs
            if profit >max && prices[i] < prices[j]
                max=profit
                solution = [i,j]
            
            end
            j+=1
            
        end

       i+=1 
    end
    
    puts max
    puts solution
end

stock_picker([17,3,6,9,15,8,6,1,10])