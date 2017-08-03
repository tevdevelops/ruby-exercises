def stock_picker(my_array)
	buy_day = 0
	max = my_array[1] - my_array[0]
	table = [0, 1]
	for test_day in (1...(my_array).length) do
		if my_array[test_day] <= my_array[buy_day]
			buy_day = test_day
		end
		if my_array[test_day] - my_array[buy_day] > max
			max =  my_array[test_day] - my_array[buy_day]
			table = [].push(buy_day,test_day)
		end

	end
  puts "You should buy on day #{table[0]} and sell on day #{table[1]} for a max profit of $#{max}."
	return table
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
