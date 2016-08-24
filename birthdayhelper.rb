class BirthdayHelper
#Write a program to read in names and birth dates from a text file. It should then ask you for a name.
#You type one in, and it tells you when that person’s next birthday will be (and, for the truly adventurous, how old they will be).
#The input file should look something like this:
  # def self.foo
    birthdates = {}
    File.read('/Users/theaamandakuppler/projects/learn_to_program/birthdayhelper.txt').each_line do |line|
      line = line.chomp
      #find the index of first comma
      first_comma = 0
      name = nil
      date = nil
      while line[first_comma] != ","
        name = name.to_s + line[first_comma].to_s
        first_comma = first_comma + 1
      end
      while line[first_comma] == "," || line[first_comma] == " "
        first_comma = first_comma + 1
      end
      date = line[first_comma..line.length]
      birthdates[name] = date
  end
  # end
  puts "From whom do you want to know the birthdate of?"
  quest_name = gets.chomp
  while birthdates.has_key?(quest_name) == false
    puts "I am sorry, I don't know that person. Please try again."
    quest_name = gets.chomp
  end
  puts "The birthday of #{quest_name} is on #{birthdates[quest_name]}."
end
