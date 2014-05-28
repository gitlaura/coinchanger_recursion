def change_amount(n)
	
	get_change(n, [], [25,10,5,1])

end

def get_change(n, correct_change, coins)
	
	return correct_change if n == 0

 	if n >= coins[0]
 		i = n/coins[0]	
 		get_change(n -= (coins[0] * i), i.times { correct_change << coins[0]}, coins.shift)
 		print "Correct Change: #{correct_change} Coins: #{coins}"
 	else
 		get_change(n, correct_change, coins.shift)
 		print "Correct Change: #{correct_change} Coins: #{coins}"
 	end

end


describe "Coin Changer Kata" do
	it	'changes 0' do
		change_amount(0).should == []
	end
	it	'changes 1' do
	 	change_amount(1).should == [1]
	end
end