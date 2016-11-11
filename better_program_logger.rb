# It would be so much easier to read if it indented the lines in the inner blocks.
# So, you’ll need to keep track of how deeply nested you are every time the logger wants to write something.
# To do this, use a global variable, which is a variable you can see from anywhere in your code. To make a global variable, just precede
#   your variable name with $, like so: $global, $nesting_depth, and $big_top_pee_wee. In the end, your logger should output code like this:

$global_depth = 0

def log block_description, &block
  prefix = '   ' * $global_depth
  puts "#{prefix}The block '" + block_description + "' started..."
  $global_depth = $global_depth + 1
  result = block.call
  $global_depth = $global_depth - 1
  puts "#{prefix}...'" + block_description + "' finished and returned " + result.to_s
end

log 'outer block' do
  log 'some little block' do
    log 'blabla' do
      2+2
    end
    1**1 + 2**2
  end

  log 'yet another block' do
    'duolcdnuos'.reverse
  end

  '0' == 0
end
