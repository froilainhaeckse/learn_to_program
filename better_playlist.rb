# learntoprogram: 11.8
# ​Build a better playlist.​
# write a new ​music_shuffle​ method
# It should take an array of filenames (like those listed previously) and mix them up good and proper.

#split​ method for strings: It returns an array of chopped-up pieces of the  original string, split where you specify, like this:
# awooga = ​'this/is/not/a/daffodil'​.split ​'/'​
# puts awooga

require "mp3info"

def shuffle_method unshuffled_array
	#already good enough music shuffle
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

# in welchem verzeichnis liegt die mucke?
music = Dir['/Users/theaamandakuppler/Documents/Mucke copy/*.mp3']
'/Users/theaamandakuppler/Documents/Mucke/We blog for Change/*.mp3'

# ['/Users/theaamandakuppler/Documents/Mucke copy/*.mp3']

# music.each do |mp3|
# 	artist = Mp3Info.open(mp3).tag.artist
# 	if artist == "Bibi Blocksberg" or artist == "Die Drei Fragezeichen" then
# 		if artist == "Bibi blocksberg" then blocksberg.push(mp3) end
# 		if artist == "Die Drei Fragezeichen" then fragezeichen.push(mp3) end
# 		music.delete(mp3)
# 	end
# end

# erstellt ein geshuffeltes array der tracks
tracks = shuffle_method(music)

# ungeshuffelt
# tracks = music

#name der playlist
name = "playlist.m3u"

#erstellt eine neue playlist
File.open name, 'w' do |f|
	tracks.each do |mp3|
		f.write mp3+"\n"
	end
end
	#
	# File.open 'blocksberg_playlist.m3u', 'w' do |f|
	# 	blocksberg.each do |mp3|
	# 		f.write mp3+"\n"
	# 	end
	# end
	#
	# File.open 'fragezeichen_playlist.m3u', 'w' do |f|
	# 	fragezeichen.each do |mp3|
	# 		f.write mp3+"\n"
	# 	end
	# end
