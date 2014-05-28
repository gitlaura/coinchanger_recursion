require 'coin_changer.rb'

describe "Coin Changer Kata" do
	it	"changes 0" do
		change_amount(0).should == []
	end
	it	"changes 1" do
	 	change_amount(1).should == [1]
	end
	it	"changes 2" do
	 	change_amount(2).should == [1, 1]
	end
	it	"changes 5" do
	 	change_amount(5).should == [5]
	end
	it	"changes 10" do
	 	change_amount(10).should == [10]
	end
	it	"changes 36" do
	 	change_amount(36).should == [25, 10, 1]
	end
	it	"changes 89" do
	 	change_amount(89).should == [25, 25, 25, 10, 1, 1, 1, 1]
	end
end

describe "Add Items To Array" do
	it	"changes [] to [1]" do
		add_items_to_array([], 1, 1).should == [1]
	end
	it	"changes [10] to [10, 15, 15]" do
		add_items_to_array([10], 2, 15).should == [10, 15, 15]
	end
	it	"changes [] to [1, 1]" do
		add_items_to_array([], 2, 1).should == [1, 1]
	end
end