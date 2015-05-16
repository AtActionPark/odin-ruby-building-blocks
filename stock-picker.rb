def stock_picker days
	benefit, day_to_sell, day_to_buy = 0,0,0
	result = [0,0]
	days.each_with_index do |d1, index1|
		days.each_with_index do |d2, index2|
			if index2 > index1 && d2-d1 >benefit
				benefit = d2-d1
				day_to_buy = d1
				day_to_sell = d2
				result[1] = index2
				result[0] = index1
			end
		end
	end
	puts "buy at  #{day_to_buy}$, sell at  = #{day_to_sell}$, total profit = #{benefit}$"
	return result
end

puts stock_picker([17,3,6,9,15,8,6,1,10])