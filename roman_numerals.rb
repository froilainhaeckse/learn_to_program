class RoNu
# 12.6

	def self.inro(number)
		rl = "" #emtpy roman letter string
		counter = 0
		numb_array = [1000,500,100,50,10,5,1]
		letter_array = ['M','D','C','L','X','V','I']
		numb_array.each do |num|
			#numb=jeweilige zahl vom array
			rl = rl+(letter_array[counter]*(number/num))
			number = number%num
			counter = counter + 1
		end
		return rl
	end

	def self.roin(roman)
		int = nil #emtpy roman letter string
		storage = nil
		counter = 0
		rom_hash = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
		roman.each do |rom|
			# nimm die roman numeral und check welche zahl es ist mit hash
			if rom_hash[roman[counter]].to_i >= rom_hash[roman[counter+1]].to_i
				int = int.to_i + rom_hash[roman[counter]].to_i
				counter = counter + 1
			else
				int = int.to_i + (rom_hash[roman[counter+1]].to_i - rom_hash[roman[counter]].to_i)
				counter = counter + 2
			end
		end
		return int
	end

end

puts "Please tell me the number you want to have in roman numerals"
num = gets.chomp.to_i
puts RoNu.inro(num)

puts "Please tell me the roman numeral you want to have in integer"
roman = gets.chomp.chars
puts RoNu.roin(roman)
