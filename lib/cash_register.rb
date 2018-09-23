require 'pry'

class CashRegister

  attr_accessor :total, :discount

def initialize(discount = 0)
  @total = 0
  @discount = discount

  @items = []
end

def add_item(title, price, quantity = 1.0)
  @title = title
  @price = price
  @quantity = quantity
  @total += price * quantity
  @store_trans = price * quantity

  @total_items = @title.split(" ").flatten * @quantity

  @items << @total_items

end

def apply_discount
@discount_off = @total * (@discount/100.00)
@total = @total - @discount_off
  if @discount > 0
 "After the discount, the total comes to $800."
  else
  "There is no discount to apply."
end

end

def items
  @items.flatten

end

def void_last_transaction
  # binding.pry
  return @total = self.total - @store_trans


end

end
