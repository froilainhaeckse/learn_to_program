#Modern” Roman numerals.​ Eventually, someone thought it would be terribly clever if putting a smaller number before a larger one meant you had 
#to subtract the smaller one. As a result of this development, you must now suffer. Rewrite your previous method to return the new-style 
#Roman numerals so when someone calls ​roman_numeral 4​, it should return 'IV'.“


def roman number
	rl = "" #emtpy roman letter string
	counter = 0
	numb_array = [1000, 900, 500, 400, 100,90, 50, 40, 10, 9, 5, 4, 1]
	letter_array = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
	numb_array.each do |numb|
		#numb=jeweilige zahl vom array
		rl = rl+(letter_array[counter]*(number/numb))
		number = number%numb
		counter = counter + 1	
	end
	return rl
end

puts roman(1359)