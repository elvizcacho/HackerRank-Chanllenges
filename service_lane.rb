#Service Lane : Hackerrank

args = gets.split(" ")
N = args[0].to_i
T = args[1].to_i
service_lane = gets.split(" ")
m = 0
n = 1000**1000
while m < T
	args = gets.split(" ")
	i = args[0].to_i
	j = args[1].to_i
	while i <= j
		if service_lane[i].to_i < n
			n = service_lane[i].to_i
		end
		i += 1
	end
	puts n
	n = 1000
	m += 1
end
	




