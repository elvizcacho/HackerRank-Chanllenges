
t = gets.to_i
three = 0
five = 0
array3 = Array.new
array5 = Array.new
mult3 = 0
mult5 = 0
while t > 0
	max = gets.to_i

	while mult3 < max
		array3 << mult3
		mult3 += 3
	end

	while mult5 < max
		array5 << mult5
		mult5 += 5
	end

	accumulator = 0

	for num1 in array3
		accumulator += num1
	end

	for num2 in array5
		accumulator += num2
	end

	puts accumulator
	# print array3
	# puts
	# print array5
	array3.clear
	array5.clear
	mult5 = 0
	mult3 = 0
	t -= 1
end