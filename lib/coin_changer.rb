def change_amount(cents)
	get_change(cents, [], [25,10,5,1])
end

def get_change(remaining_cents, coin_array, denominations)
	return coin_array if remaining_cents == 0

	current_coin = denominations[0]
 	remaining_denominations = denominations.drop(1)

 	if remaining_cents >= current_coin
 		number_of_coins = remaining_cents/current_coin
 		remaining_cents -= (number_of_coins * current_coin)
 		get_change(remaining_cents, add_items_to_array(coin_array, number_of_coins, current_coin), remaining_denominations)
 	else
 		get_change(remaining_cents, coin_array, remaining_denominations)
 	end

end

def add_items_to_array(current_array, number_of_items_to_add, item)
	number_of_items_to_add.times {current_array << item}
	return current_array
end