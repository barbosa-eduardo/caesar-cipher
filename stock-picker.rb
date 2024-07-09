def stock_picker(stock_prices)
  best_profit = 0
  best_days = Array.new
  stock_prices.each_with_index do |bought, day_bought|
    stock_prices[day_bought..-1].each_with_index do |sold, day_sold|
      profit = sold - bought
      if profit > best_profit
        best_profit = profit
        best_days = [day_bought, day_bought + day_sold]
      end
    end
  end
  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10]) #=> [1,4]  # for a profit of $15 - $3 == $12
