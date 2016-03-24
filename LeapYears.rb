puts "Please give in the year you want to start with to extrate the leaping years:"
yearstart = gets.chomp.to_i
#yearstart = 200
puts "Please give in the year you want to end with:"
yearend = gets.chomp.to_i
#yearend = 2000
number = yearstart
counter = 0
divbyfour = []
leapyear = []
while number <= yearend
	#division durch 4 mit rest und wenn kein rest, dann...
	if number % 4 == 0
		divbyfour[counter] = number
		leapyear[counter] = number unless divbyfour[counter] % 100 == 0
		if divbyfour[counter] % 100 == 0 and divbyfour[counter]	 % 400 == 0 then
			leapyear[counter] = number
		end
	end
	number = number +1
	counter = counter +1
end
puts "In the following are all leapyears shown between the two years you chose"
puts leapyear
#divbyfour ist das array wo alle zahlen die durch vier teilbar sind, gespeichert werden
# array mit allen leap years
# alle jahre nach und nach durch vier teilen, wenn leap year, dann in array packen
# array dann testen, ob durch 100 teilbar, wenn nein -> dann leap year
# wenn ja UND durch 400 teilbar, dann leap year
#and then puts all the leap years between them (and including them, if they are also leap years). 
#Leap years are years divisible by 4 (like 1984 and 2004). However, years divisible by 100 are not leap years (such as 1800 and 1900) unless they are also divisible by 400 (such as 1600 and 2000, which were in fact leap years). What a mess! 