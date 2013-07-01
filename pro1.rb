even_check1 = lambda do |n|
	nil if n % 2 != 0
	n if n % 2 == 0
end

def to_even_array(my_array) 
	result = []
	my_array.each { |n| result << n if yield(n) != nil }
	result
end

my_array = [1,2,3,4,5,6,7,8,9,10]

puts to_even_array(my_array, &even_check1)