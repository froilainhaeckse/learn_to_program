#„Safer picture downloading.​ Adapt the picture-downloading/file-renaming program to your computer by adding some safety features to make sure you never overwrite a file. A few methods you might find useful are ​File.exist?​ (pass it a filename, and it will return ​true​ or ​false​) and ​exit​ (like if ​return​ and Napoleon had a baby—it kills your program right where it stands; this is good for spitting out an error message and then quitting).“

Dir.chdir '/Users/theaamanda/Documents/Programmieren/LearnToProgram/learn_to_program/TESTBILDER2'
#First we find all of the pictures to be moved
pic_names = Dir['/Users/theaamanda/Documents/Programmieren/LearnToProgram/learn_to_program/TESTBILDER/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
#This will be our counter. We'll start at 1 today, though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
	# This is our progress bar
	print '.'
	new_name = if pic_number < 10
		"#{batch_name}0#{pic_number}"
	else
		"#{batch_name}#{pic_number}"
	end
 	#Make sure we don't save over another file!!​
	save_name = new_name + '.jpg'
	while FileTest.exist? save_name
		new_name += 'a'
		save_name = new_name + '.jpg'
	end
	File.rename name, save_name
	pic_number = pic_number + 1
end
puts
