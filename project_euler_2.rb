
t = gets.to_i

while t > 0

	n = gets.to_i
	num1 = 0
	num2 = 1
	num3 = 0
	i = 0
	result = 0
	while i < n
		num3 = num1 + num2
		num1 = num2
		num2 = num3
		if num3 % 2 == 0 and num3 < n
			result += num3
		end
		i += 1
	end
	p result
	num1 = 0
	num2 = 1
	num3 = 0
	i = 0
	result = 0
	t -= 1
end