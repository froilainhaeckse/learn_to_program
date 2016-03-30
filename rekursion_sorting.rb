# write your own sorting method.
# we want to sort an array of words, and we know how to find out which of two words comes first in the dictionary (using ​<​ ).

# What strikes me as probably the easiest way to do this is to keep two more lists around: one will be our list of already-sorted words, 
# 	and the other will be our list of still-unsorted words. We’ll take our list of words, find the “smallest” word (that is, the word that would 
# 		come first in the dictionary), and stick it at the end of the already-sorted list. All of the other words go into the sti“
# That doesn’t sound too bad, but it’s keeping all of the details straight that makes it so tricky. Go ahead and try it, and see how it looks. 
# In fact, try it twice: once using recursion and once without. With the recursion, you might need a ​ wrapper method​ , a tiny method that wraps up
#  another method into a cute little package, like this:

# What was the point of the wrapper method? Well, ​recursive_sort​ took two parameters, but if you were just trying to sort an array, 
# you would always have to pass in an empty array as the second parameter. This is a silly thing to have to remember. 
# Here, the wrapper method passes it in for us, so we never have to think about it again.
# When you’re done, make sure to test your code! Type in duplicate words and things like that. A great way to test would be to use the built-in ​sort​ method 
# to get a sorted version of your list right away. Then, after you have sorted it for yourself, make sure the two lists are equal.“

def sort some_array
	rekursion_sorting some_array, []
end

#Well, ​recursive_sort​ took two parameters, but if you were just trying to sort an array, 
# you would always have to pass in an empty array as the second parameter. This is a silly thing to have to remember. 
# Here, the wrapper method passes it in for us, so we never have to think about it again.

def rekursion_sorting unsorted_array, sorted_array
	new_array = Array.new
	new_array = unsorted_array
	while new_array.count > 0 do
		#speichere das erste array um einen vergleichswert zu haben
		storedword=unsorted_array[0]
		#schaue durch jedes wort des arrays
		new_array.each do |word|
			if storedword > word
				#wenn das gemerkte wort größer ist, dann merke das neue, also kleinere wort
				storedword = word
			end
		end
		#zum ende ist das gemerkte word, das kleinste word und wird an letzter stelle ins array gepackt und aus dem alten array gelöscht
		sorted_array.push(storedword)
		new_array.delete(storedword)
		rekursion_sorting(new_array,sorted_array)
	end
	return sorted_array
#PROBLEM, durch löschmethode wird words_array modifiziert???? call by reference/value umgehen
end

#array von den zu sortierenden wörtern
words_array = ['liebe','geld','auszug','laptop','xxx', 'computer', 'sex']
puts words_array
puts''
puts sort(words_array)
puts''
puts "Da sollte eigentlich Text folgen:"
puts words_array





