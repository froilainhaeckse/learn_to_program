puts "Please type in the words you want to have sorted. When you are done, please press [ENTER]"
words = []
input = gets.chomp
loop do
	words.push input
	input = gets.chomp
	break if input.empty?
end
puts words.sort


#one that asks us to type as many words as we want (one word per line, continuing until we just press ​Enter​ on an empty line) 
#and then repeats the words back to us in alphabetical order. 
#Make sure to test your program thoroughly; for example, does hitting ​Enter​ on an empty line ​always​ exit your program?
# Even on the first line? And the second? ​Hint:​ There’s a lovely array method that will give you a sorted version of an array: ​sort​ . Use it!“