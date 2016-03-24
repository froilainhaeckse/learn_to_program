
	puts 'You meet your Grandma. Talk to her!'
	input = gets.chomp
	#allletterscapitalize
	while input != 'BYE'
		if input != input.upcase
			puts 'HUH?! SPEAK UP, SONNY!'
		else
			#different year each time, any year at random between 1930 and 1950
			#rand gibt nummer zwischen 0 - x, also (0 - 20) + 1930
			x = rand(20)
			year = x + 1930
			puts 'NO, NOT SINCE ' + year.to_s + '!'
		end
		input = gets.chomp
	end