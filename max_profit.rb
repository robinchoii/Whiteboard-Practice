max_profit.rbstock_prices_yesterday = [10, 7, 5, 8, 11, 9]

def get_max_profit(array)
  min_price = array[0]
  max_profit = array[1] - array[0]

  array.each_with_index do |current_price, index|
    potential_profit = current_price - min_price
    min_price  = [min_price, current_price].min
    max_profit = [max_profit, potential_profit].max
  end
  return max_profit
end

p get_max_profit(stock_prices_yesterday)

