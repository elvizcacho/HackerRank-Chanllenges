
def iter(max)
	array1 = Array.new
	i = 1
	while i < max

		if max % i == 0
			array1 << i
		end
		i = ((max % 2) == 0)? i + 2 : i + 1
	end
	if array1.length == 1
		puts max
	else
		if array1.length == 2
			puts array1[array1.length - 1]
		else
			iter(array1[array1.length - 1])
		end
	end
	
end

t = gets.to_i

while t > 0
	max = gets.to_i
	iter(max)
	t -= 1
end