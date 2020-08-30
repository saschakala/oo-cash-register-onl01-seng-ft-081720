class CashRegister
attr_accessor :total, :discount, :title, :price, :quantity, :items, :total_before_add


def initialize (discount=0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item (title, price, quantity = 1)
  @total_before_add = @total #sets a variable to keep track of the total amount
  #before the next item is added
  @total += price * quantity
  quantity.times {@items << title} 
  #iterates over the block a quantity amount of times so that the correct
  #count of each individual item is added
end

def apply_discount
  if @discount > 0
  @total -= (@total * @discount.to_f / 100).to_i
  "After the discount, the total comes to $#{total}."
  else 
    "There is no discount to apply."
  end
end

def items
  @items
end

def void_last_transaction
  @total = @total_before_add #sets the total equal to the total before the 
  #last item was added
end





end
