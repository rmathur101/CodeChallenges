class Squares

def initialize(num)
	@num = num
end

def square_of_sums
	total = 0
	[*1..num].each do |n|
		total += n
	end
	return total**2
end

end