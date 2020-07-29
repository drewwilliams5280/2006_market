class Market

  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map {|vendor| vendor.name}
  end

  def vendors_that_sell(item)
    selling_vendors = []
    @vendors.each do |vendor|
      if vendor.inventory.keys.include?(item)
        selling_vendors << vendor
      end
    end
    selling_vendors
  end

  def all_items
    items = []
    @vendors.each do |vendor|
      items << vendor.inventory.keys
    end
    items.flatten
  end

  def total_quantity(item)
    total = 0
    @vendors.each do |vendor|
      if vendor.inventory.keys.include?(item)
        total += vendor.inventory[item]
      end
    end
    total
  end

  def total_inventory
    inventory_hash = {}
    all_items.each do |item|
      inventory_hash[item] = {quantity: total_quantity(item), vendors: vendors_that_sell(item)}
    end
    inventory_hash
  end

  def overstocked_items
    overstocked = []
    all_items.each do |item|
      if total_quantity(item) > 50 && vendors_that_sell(item).count > 1
        overstocked << item
      end
    end
    overstocked.uniq
  end

end
