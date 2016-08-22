# 12.2 One billion seconds! Find out the exact second you were born (if you can).
# Figure out when you will turn (or perhaps when you did turn) one billion seconds old 1,000,000,000.

month = nil

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
puts "Tell me the hour at which you were born (HH):"
hour = gets.chomp
puts "Tell me the amount of minutes it was past that hour when you were born (MM):"
minutes = gets.chomp
puts "Do you also know the amount of seconds? (SS):"
seconds = gets.chomp

birthtime = Time.gm(year, month, day, hour, minutes, seconds)

bill_birthdate = birthtime + 1000000000
puts "On #{bill_birthdate} you will become 1000000000 seconds old. Mark you calender."
