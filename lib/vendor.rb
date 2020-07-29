class Vendor

  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory.keys.include?(item)
      @inventory[item]
    else
      0
    end
  end

  def stock(item, amount)
    if @inventory.keys.include?(item)
      @inventory[item] += amount
    else
      @inventory[item] = amount
    end
  end

  def potential_revenue
    total = 0
    @inventory.each do |item, quantity|
      no_dollar_price = item.price.delete("$")
      total += (no_dollar_price.to_f * quantity)
    end
    total
  end

end
