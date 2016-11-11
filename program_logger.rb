def log block_description, &block
  puts "The block '" + block_description + "' started"
  result = block.call
  puts "The block '" + block_description + "' finished and returned " + result.to_s
end

log 'outer block' do
  log 'some little block' do
    1**1 + 2**2
  end

  log 'yet another block' do
    'duolcdnuos'.reverse
  end

  '0' == 0
end
