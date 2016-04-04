counter = 99
while counter.to_i > 0 or counter.to_s == 'no more' do
	puts "#{counter} bottles of beer on the wall, #{counter} bottles of beer."
	if counter == 'no more'
		break
	end
	counter = counter -1
	if counter == 0
		counter = 'no more'
	end
	#wenn counter = 0, dann "no more"
	puts "Take one down and pass it around, #{counter} bottles of beer on the wall."
end
puts "Take one down and pass it around, 99 bottles of beer on the wall."