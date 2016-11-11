# Write a method that takes a block and calls it once for each hour that has passed today.

def profile &block
  hour_now = Time.new.hour
  if hour_now == 0
    puts "No hour has passed today yet. Try it later again."
  else
    puts "#{hour_now} hour/s have passed"
    counter = hour_now
    for i in 1..hour_now
      puts "#{i} hour/s"
      block.call
    end
  end
  # alternative solution:
  # hour = (Time.new.hour + 11)%12 + 1
  # hour.times(&block)
end

profile do
  puts 'DONG'
end
