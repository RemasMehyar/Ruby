def stockPicker(price)
    max=0
    days=""
    price.each_with_index do |sell,sellDayIndex|
        price.each_with_index do |buy, buyDayIndex|
            profit  = sell-buy
        
            if(profit>max && sellDayIndex > buyDayIndex )
                max = profit
                days=[buyDayIndex,sellDayIndex]
            end
    end
    end
    p days
    days
end
stockPicker([17,3,6,9,15,8,6,1,10])
