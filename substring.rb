dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings phrase, dict
	result = Hash.new{0}
	words = phrase.downcase.split(" ")
	words.each do |w|
		dict.each do |d|
			if w.include?(d)
				result[d]+=1
			end	
		end
	end
	puts result

end

substrings("Howdy partner, sit down! How's it going?", dictionary)