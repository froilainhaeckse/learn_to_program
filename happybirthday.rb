# • Happy birthday! Ask what year a person was born in, then the month, and then the day. Figure out how old they are, and give them a big SPANK! for each birthday they have had.
puts "Tell me the year in which you were born (YYYY):"
year = gets.chomp
puts "Tell me the month in which you were born (MM):"
month = gets.chomp
while month.to_i >= 13
  puts "Something went wrong. Try again. Which month were you born?"
  month = gets.chomp
end
puts "Tell me the day on which you were born (DD):"
day = gets.chomp

# age in seconds
sec_age = Time.now - Time.gm(year, month, day)
# age in hours
hrs_age = sec_age / 3600
age = hrs_age / 8736
counter = age.to_i
while counter >= 1
  puts "SPANK! You had birthday!"
  counter = counter - 1
end
