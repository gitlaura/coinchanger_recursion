require '../lib/coin_changer.rb'

describe "Coin Changer Kata" do
	it	'changes 0' do
		change_amount(0).should == []
	end
	it	'changes 1' do
	 	change_amount(1).should == [1]
	end
end