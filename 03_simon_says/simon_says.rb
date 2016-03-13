def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(x, no=2)
	reply = (x + " ") * (no-1)
	reply += x
end

def start_of_word(x, no)
	start = x[0..(no-1)]
end

def first_word(x)
	first = x.split
	first = first[0]
end

def titleize(x)
	title = x.split
	title.map!.with_index do |i, a|
		if %w(the and over).include?(i)
			i
		else
			i.capitalize
		end
	end
	title.first.capitalize!
	title.join(" ")
end