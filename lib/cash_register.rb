require 'pry'
class CashRegister
attr_accessor :total, :items_array, :discount
@@items_array = []

  def initialize(n=0)
      @total=n
      @discount=20
  end

  def discount
    @total = 20
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @@items_array << item
    self.total += price*quantity

  end

  def apply_discount
     @total*".8".to_f
    puts "After the discount, the total comes to #{@total}"
  end

  def items
    @@items_array
  end

end
