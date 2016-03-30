# write your own sorting method.
# we want to sort an array of words, and we know how to find out which of two words comes first in the dictionary (using ​<​ ).

# What strikes me as probably the easiest way to do this is to keep two more lists around: one will be our list of already-sorted words, 
# 	and the other will be our list of still-unsorted words. We’ll take our list of words, find the “smallest” word (that is, the word that would 
# 		come first in the dictionary), and stick it at the end of the already-sorted list. All of the other words go into the sti“
# That doesn’t sound too bad, but it’s keeping all of the details straight that makes it so tricky. Go ahead and try it, and see how it looks. 
# In fact, try it twice: once using recursion and once without.

def sorting_method unsorted_array
	#erstelle neues für die sortierten wörter
	sorted_array = Array.new 
	#solang noch über 0 values im unsorted_array sind tue:
	while unsorted_array.count > 0 do
		#speichere das erste array um einen vergleichswert zu haben
		storedword=unsorted_array[0]

		#schaue durch jedes wort des arrays
		unsorted_array.each do |word|
			if storedword > word
			#wenn das gemerkte wort größer ist, dann merke das neue, also kleinere wort
				storedword = word
			end
		end
		#zum ende ist das gemerkte word, das kleinste word und wird an letzter stelle ins array gepackt und aus dem alten array gelöscht
		sorted_array.push(storedword)
		unsorted_array.delete(storedword)
	end
	puts sorted_array
end

sorting_method(['liebe','geld','auszug','laptop','xxx'])