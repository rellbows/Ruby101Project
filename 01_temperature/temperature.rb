def ftoc(fTemp)
	cTemp = (fTemp - 32) * (5.0/9)
	cTemp.round(2)
end

def ctof(cTemp)
	fTemp = (cTemp * (9.0/5)) + 32
	fTemp.round(2)
end