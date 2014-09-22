
entrada = gets.to_s.split(' ')


n = entrada[0].to_i #Number of people
m = entrada[1].to_i #Number of topics
i = 0 
what_people_know = [] #Contains what people know
while i < n
	what_people_know << gets.to_i(2)
	i += 1
end 
i = 0
storage = []
max = 0
while i < n
	j = i + 1
	while j < n
		storage << (what_people_know[i] | what_people_know[j])
		max = storage[storage.length - 1] > max ? storage[storage.length - 1] : max
		j += 1
	end
	i += 1
end
teams = 0
topics = 0
for item in storage
	if item == max
		teams += 1
	end
end
max = max.to_s(2)
max.each_char do |c|
	if c == '1'
		topics += 1
	end
end
puts topics
puts teams