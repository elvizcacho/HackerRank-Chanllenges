
t = gets.to_i
array = Array.new
while t > 0
	message = gets
	array.clear
	message.each_byte do |c|
		array << c
	end
	array.delete_at(-1)
	i = 0
	result = 0
	last = array.length - 1 - i
	if array.length != 2
	 	while (i - last).abs > 1
			last = array.length - 1 - i
			result += (array[i] - array[last]).abs
	 		i += 1
	 	end
	 else
	 	result = (array[0] - array[1]).abs
	 end
	 	puts result
		t -= 1
end