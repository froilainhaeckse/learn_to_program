# Build your own playlist.​
# Building a playlist is easy. It’s just a regular text file. Each line is a filename, like this: # music/world/Stereolab--Margarine_Eclipse/track05.ogg
# What makes it a playlist? Well, you have to give the file the ​m3u​ extension, like ​playlist.m3u​ or something. And that’s all a playlist is: a text file with an ​m3u​ extension.

# So, have your program search for various music files and build you a playlist. Use your ​shuffle​ method here to mix up your playlist. Then check it out in your favorite musicplayer (Winamp, MPlayer, and so on)!

#Dir.chdir '/Users/theaamanda/Documents/Programmieren/LearnToProgram/learn_to_program/'
#We find all the tracks we've got

def shuffle_method unshuffled_array
	shuffled_array = Array.new(unshuffled_array.length)
	number = rand(0..unshuffled_array.length-1)
	unshuffled_array.each do |word|
		while shuffled_array[number] !=nil
			number = rand(0..unshuffled_array.length-1)
		end
		shuffled_array[number] = word
	end
	return shuffled_array
end

#tracks = shuffle_method(Dir['/Users/Documents/Musik/**/*.mp3'])
tracks = shuffle_method(Dir['/Users/theaamanda/Documents/Musik/*.mp3'])
File.open 'playlist.m3u', 'w' do |f|
	tracks.each do |mp3|
		f.write mp3+"\n"
	end
end
