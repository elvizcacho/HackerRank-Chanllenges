
t = gets.to_i
T = t
gems = Array.new
until t.zero?
	gems << gets.chomp
	t -= 1
end
gems2 = ""
j = 0
while j < gems.length
	i = 0
	while i < gems[j].length
		if gems[j].count(gems[j][i]) > 1
			gems2 << gems[j][i]
		end
		i += 1
	end
	gems[j] = gems[j].delete(gems2)
	gems2.clear
	j += 1
end
cadena = ""
result = 0
gems.each do |gem|
	cadena += gem
end
i = 0
while i < cadena.length
	if cadena.count(cadena[i]) == T 
		cadena[i] = ""
		result += 1
	end
	i += 1
end
puts result