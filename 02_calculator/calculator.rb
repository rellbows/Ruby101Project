def add(num1, num2)
	total = num1 + num2
end

def subtract(num1, num2)
	total = num1 - num2
end

def sum(num)

	if (num == [])
		return 0
	else
		total = 0
		num.each do |i|
			total += i
		end
		total
	end
end

def multiply(num)
	total = 1
	num.each do |i|
		total = total * i
	end
	total
end

def power(num1, num2)
	total = num1 ** num2
end

def factorial(num)
	if (num==0)
		return 1
	else
		fact = *(1..num)
		fact.inject do |sum, i| 
			total = sum * i
		end
	end
end

#p multiply([7, 3])

#p power([2,2])

#p factorial(0)

#p factorial(5)