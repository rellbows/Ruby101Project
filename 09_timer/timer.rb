class Timer

	#shortcut for GETTER method
	#attr_reader :seconds

	def initialize
		@seconds = 0
	end

	#SETTER: this is how you change instance variables from outside
	def seconds=(new_seconds)
		@seconds = new_seconds
	end

	#GETTER: this returns the value of the instance variable
	def seconds
		@seconds
	end

	###This is the quick smart way###
	def time_string

		hours = @seconds/3600 #if not an hour will be stored as 0
		remainder = @seconds%3600 #modulo gives the amount that remains
		sprintf("%02d:%02d:%02d", hours, remainder/60, remainder%60) #string formatting
		
	end

#####This was the unneccessarily long complicated way.####
#my first attempt (forgot about modulos)

=begin
	
rescue Exception => e
	
end
	def time_string
		time_calc
		@time_ary.map! do |e|
			if e.length == 2
				e
			else
				e = "0" + e
			end
		end

		@time_string = @time_ary.join(":")
	end

	def time_calc

		time = @seconds
		leftover = 0
		if (time-3600) >= 0
			hours = time/3600
			leftover = time - (hours*3600)
			if (leftover - 60) >= 0
				minutes = leftover/60
				seconds = leftover - (minutes*60)
			else
				minutes = 0
				seconds = leftover
			end
		elsif (time-60) >= 0
			hours = 0
			minutes = time/60
			seconds = time - 60
		else
			hours = 0
			minutes = 0
			seconds = time
		end
	@time_ary = [hours, minutes, seconds]
	@time_ary.map! do |e|
		e.to_s
	end
	end
=end

end

