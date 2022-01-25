# for a given buy day, returns the best day to sell, this day being necessary after the buy day. Assumption: we can buy and sell the same day
def best_sell_day(array,buy_day)
  if buy_day>=array.length
    return "Error: the array is too short for the buy day selected"
  else
    array_future = array[buy_day..-1]
    sell_day = array_future.index(array_future.max)+buy_day
    return sell_day
  end
end

# returns the gain of the trader for a given pair of buy and sell days
# the buy and sell days are stored in the array 'pair_of_days' as follow:
# pair_of_days = [buy_day,sell_day]
def gain(array, pair_of_days)
  return array[pair_of_days[1]]-array[pair_of_days[0]]
end

# returns the best pair of days thaht maximzes the gain of the trader
def day_trader(array)
  pairs_of_days = []
  gains_per_pairs = []
  array.each_index do |day|
    pairs_of_days[day]=[day,best_sell_day(array,day)]
    gains_per_pairs[day]=gain(array,pairs_of_days[day])
  end

  return pairs_of_days[gains_per_pairs.each_with_index.max[1]]

end

array = [17, 3, 6, 9, 15, 8, 26, 1, 10]
buy_day = 0
