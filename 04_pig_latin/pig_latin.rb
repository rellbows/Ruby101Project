def translate(word)
	word_list = word.split
	word_list.map! do |x|
		if /[aeiou]/ === x[0]
			x << "ay"
		elsif  x[0..1] == "qu"
			x[2..(x.length)] + x[0..1] + "ay"
		elsif x[0..2] == "squ"
			x[3..(x.length)] + x[0..2] + "ay"
		elsif /[b-df-hj-np-tv-z]{3}/ === x[0..2]
			x[3..(x.length)] + x[0..2] + "ay"			
		elsif /[b-df-hj-np-tv-z]{2}/ === x[0..1]
			x[2..(x.length)] + x[0..1] + "ay"
		else	
			x[1..(x.length)] + x[0] + "ay"
		end
	end
	word_list.join(" ")
end