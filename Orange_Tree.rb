class OrangeTree
  def initialize
    @tree_age = 0
    @tree_height = 0
    @fruits_tree_produces = 0
    @oranges_on_tree = @fruits_tree_produces
    puts "You seeded a tree. Let's see how it will grow."
  end
  def height
    puts "The tree is #{@tree_height}m high."
  end
  def one_year_passes
    @tree_age = @tree_age + 1
    @tree_height = @tree_height + 0.3
    if @tree_age >= 3
      if @tree_age >= 30
        puts "The tree lived its best lifes. It's dead now."
        exit
      end
    @fruits_tree_produces = @fruits_tree_produces + 10
    @oranges_on_tree = @fruits_tree_produces
    end
    puts "Another year passed. Lets see if there are any fruits on our tree."
  end
  def count_the_oranges
    puts "There are #{@oranges_on_tree} oranges on the tree."
    # returns the number of oranges on the tree
    # Make sure any oranges you don’t pick one year fall off before the next year.
  end
  def pick_an_orange
    if @oranges_on_tree == 0
      puts "I am sorry. There are no more oranges on the tree this year."
    else
      @oranges_on_tree = @oranges_on_tree - 1
      puts "This orange was very delicious."
    end
  end
end

tree = OrangeTree.new
tree.one_year_passes
tree.height
tree.one_year_passes
tree.height
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.pick_an_orange
tree.count_the_oranges
