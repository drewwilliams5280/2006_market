require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/item'
require './lib/vendor'



class VendonTest < Minitest::Test

  def test_it_exists
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    assert_instance_of Item, item1
  end


end
