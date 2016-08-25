class Shuffle
# „Shuffle.​ Now that you’ve finished your new sorting algorithm, how about the opposite? Write a ​shuffle​ method that takes an array and returns a
# totally shuffled version. As always, you’ll want to test it, but testing this one is trickier: How can you test to make sure you are getting a
# perfect shuffle? What would you even say a perfect shuffle would be? Now test for it.“

def self.shuffle_method unshuffled_array
	shuffled_array = Array.new(unshuffled_array.length)
	number = rand(0..unshuffled_array.length-1)
	unshuffled_array.each do |word|
		while shuffled_array[number] != nil
			number = rand(0..unshuffled_array.length-1)
		end
		shuffled_array[number] = word
	end
	return shuffled_array
end


# 	#erstelle neues array für die geshuffleten wörter

# 	#solang noch über 0 values im unsorted_array sind tue:
# 	while unsorted_array.count > 0 do
# 		#speichere das erste array um einen vergleichswert zu haben
# 		storedword=unsorted_array[0]

# 		#schaue durch jedes wort des arrays
# 		unsorted_array.each do |word|
# 			if storedword > word
# 			#wenn das gemerkte wort größer ist, dann merke das neue, also kleinere wort
# 				storedword = word
# 			end
# 		end
# 		#zum ende ist das gemerkte word, das kleinste word und wird an letzter stelle ins array gepackt und aus dem alten array gelöscht
# 		sorted_array.push(storedword)
# 		unsorted_array.delete(storedword)
# 	end
# 	return sorted_array
# end

end

puts Shuffle.shuffle_method(['liebe','marie','thea','geld','auszug','laptop','xxx'])
