	# „​Dictionary sort.​ Your sorting algorithm is pretty good, sure. But there was always that sort of embarrassing point you were hoping I’d just sort 
	# of gloss over, right? About the capital letters? Your sorting algorithm is good for general-purpose sorting, but when you sort strings, you are 
	# using the ordering of the characters in your fonts (called the ​ASCII codes​) rather than true dictionary ordering. In a dictionary, case (upper or 
	# 	lower) is irrelevant to the ordering. So, make a new method to sort words (something like ​dictionary_sort​ ). Remember, though, that if I give 
	# your program words starting with capital letters, it should return words with those same capital letters, just ordered as you’d find in a dictionary.“

	def dictonary_sort unsorted_array
	#erstelle neues für die sortierten wörter
	sorted_array = Array.new 
	#solang noch über 0 values im unsorted_array sind tue:
	while unsorted_array.count > 0 do
		#speichere das erste array um einen vergleichswert zu haben
		storedword=unsorted_array[0]

		#schaue durch jedes wort des arrays
		unsorted_array.each do |word|
			if storedword.downcase > word.downcase
			#wenn das gemerkte wort größer ist, dann merke das neue, also kleinere wort
				storedword = word
			end
		end
		#zum ende ist das gemerkte word, das kleinste word und wird an letzter stelle ins array gepackt und aus dem alten array gelöscht
		sorted_array.push(storedword)
		unsorted_array.delete(storedword)
	end
	return sorted_array
end

puts dictonary_sort(['liebe','Marie','Thea','geld','auszug','laptop','xxx','Großbuchstabe','buchstabe'])