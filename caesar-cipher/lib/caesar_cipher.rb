def caesar_cipher text, key	
	result = []
	text.split("").each do |c|
		c = c.ord
		if c >64 && c<91
			c+=key
			if c>91
				c-=26
			end
		elsif c >96 && c<123
			c+=key
			if c>122
				c-=26
			end
		else
			c.chr
		end
		result << c.chr
	end
	result.join("")
end

def better_caesar text, key
	alphabet = ('a'..'z').to_a.join
	key -=26 while key>26
	permutation = alphabet[key..-1] + alphabet[0...key]
	text.tr!(alphabet, permutation)
	text.tr(alphabet.upcase, permutation.upcase)
end

puts better_caesar("What a String!", 5)