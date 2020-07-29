require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/item'
require './lib/vendor'



class VendorTest < Minitest::Test

  def test_it_exists_with_attributes
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_instance_of Vendor, vendor
    assert_equal Hash.new, vendor.inventory
    assert_equal "Rocky Mountain Fresh", vendor.name
  end

  def test_it_can_check_stock
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    vendor = Vendor.new("Rocky Mountain Fresh")
    assert_equal 0, vendor.check_stock(item1)

  end



end
