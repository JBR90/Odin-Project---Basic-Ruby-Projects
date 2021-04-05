def stock_picker(stock_prices)

    profit = {}

    for n in (0..stock_prices.length-2)
        sell = stock_prices[n+1..stock_prices.length].max
        if sell > stock_prices[n]
            profit[sell - stock_prices[n]] = {:buy => stock_prices[n], :buy_index => n, :sell => sell, :sell_index => stock_prices.find_index(sell)}
        end
    end
    sorted = profit.sort_by{|key,value| key}.reverse 
    best_day = [sorted[0][1][:buy_index],sorted[0][1][:sell_index] , sorted[0][0] ]
    puts "Buy on day #{best_day[0]} and sell on day #{best_day[1]} for the maximum profit of $#{best_day[2]}"
end


stock_picker([1,10,15,30,3,7,1])
