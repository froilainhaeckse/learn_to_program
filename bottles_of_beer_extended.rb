def english_number number
	if number < 0
	#no negative numbers
		return 'Please enter a number that isn\'t negative.'
	end
	if number==0
		return 'zero'
	end
	#No more special cases! No more returns!
	num_string=''
	#This is the string we will return.
	ones_place=['one','two','three','four','five','six','seven','eight','nine']
	tens_place=['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
	teenagers=['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
	#'left' is how much of the number we still have left to write out
	#'write' is the part we are writing out right now
	left=number

	write=left/1000000000000
	#How many thousands left?
	left=left-write*1000000000000
	#Subtract off those hundreds.
	if write>0
		#now heres the recursion:
		billions=english_number(write)
		num_string=num_string+billions+' billion'
		if left >0
			#so we dont write "two hundredfifty-one"...
			num_string=num_string+''
		end
	end
	write=left/1000000
	#How many thousands left?
	left=left-write*1000000
	#Subtract off those hundreds.
	if write>0
		#now heres the recursion:
		millions=english_number(write)
		num_string=num_string+million+' million'
		if left >0
			#so we dont write "two hundredfifty-one"...
			num_string=num_string+''
		end
	end
	write=left/1000
	#How many thousands left?
	left=left-write*1000
	#Subtract off those hundreds.
	if write>0
		#now heres the recursion:
		thousands=english_number(write)
		num_string=num_string+thousands+' thousand'
		if left >0
			#so we dont write "two hundredfifty-one"...
			num_string=num_string+''
		end
	end
	write=left/100
	#How many hundreds left?
	left=left-write*100
	#Subtract off those hundreds.
	if write>0
		#now heres the recursion:
		hundreds=english_number(write)
		num_string=num_string+hundreds+' hundred'
		if left >0
			#so we dont write "two hundredfifty-one"...
			num_string=num_string+''
		end
	end
	write=left/10
	#How many tens left?
	left=left-write*10
	#Subtract off those tens.
	if write>0
		if ((write==1) and (left>0))
			#since we cant write 'twenty-two' instead of twelve, we have to make a specialy exception for these
			num_string=num_string+teenagers[left-1]
			left=0
		else
			num_string=num_string+tens_place[write-1]
		end
		if left>0
			num_string=num_string+'-'
		end
	end
	write = left
	left = 0
	if write>0
		num_string=num_string+ones_place[write-1]
	end
	num_string
end

def bottlesofbeer counter
	savednumber = counter
	numberword = english_number(counter)
	while counter >= 0 do
		puts "#{numberword.capitalize} bottles of beer on the wall, #{numberword} bottles of beer."
		if numberword == 'no more'
			break
		end
		if counter > 0
			counter = counter -1
			numberword = english_number(counter)
		else
			numberword = 'no more'
		end
		#wenn counter = 0, dann "no more"
		puts "Take one down and pass it around, #{numberword} bottles of beer on the wall."
	end
	puts "Take one down and pass it around, #{savednumber} bottles of beer on the wall."
end


puts bottlesofbeer(999)