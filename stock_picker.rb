def stock_picker(arr)
  nested_array = []
  max_profit = -Float::INFINITY
  best_buy_day = 0
  best_sell_day  = 0

  arr.each_with_index do |num1, index1|
    temp_array = []
    arr.each_with_index  do |num2, index2|
      if index1 < index2
        if index1 < arr.length - 1
          difference = arr[index2] - arr[index1]
          temp_array.push(difference)
        end
      end
    end
    next if temp_array.empty?
    nested_array << temp_array.dup
    temp_array.clear
  end

  nested_array.each_with_index do |inner_array, index|
    highest_number = inner_array.max
    highest_number_index = inner_array.index(highest_number)
    if highest_number > max_profit
      max_profit = highest_number
      best_buy_day = index
      best_sell_day  = highest_number_index + index + 1
    end
  end
  p [best_buy_day, best_sell_day ]
end



stock_picker([17,15,6,9,6,8,3,1,10])