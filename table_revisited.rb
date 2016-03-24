#„Table of contents, revisited.​ Rewrite your table of contents program here. Start the program with an array holding all of the information 
#for your table of contents (chapter names, page numbers, and so on). Then print out the information from the array in a beautifully formatted 
	#table of contents.“

info = ['Chapter 1:', 'Getting Started', 'page 1', 'Chapter 2:', 'Numbers', 'page 9', 'Chapter 3:', 'Letters', 'page 13']
string = 'Table of Contents '
line_width = 100
puts(string.center(line_width))
counter = 0.to_i
loop do
	left = info[counter]
	counter = counter +1
	cent = info[counter]
	counter = counter +1
	right = info[counter]
	counter = counter +1
	puts(left.ljust(line_width)+cent.center(line_width)+right.rjust(line_width))
	break if counter == info.count
end