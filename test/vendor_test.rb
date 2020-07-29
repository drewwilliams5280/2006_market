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



end
