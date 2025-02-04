def stock_picker(prices)
  max_profit = -Float::INFINITY
  best_buy_day = 0
  best_sell_day = 0
  min_price = prices.first
  min_day = 0

  prices.each_with_index do |price, day|
    if price < min_price
      min_price = price
      min_day = day
    end

    profit = price - min_price

    if profit > max_profit
      max_profit = profit
      best_buy_day = min_day
      best_sell_day = day
    end
  end

  p [best_buy_day, best_sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])