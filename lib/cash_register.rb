require 'pry'
class CashRegister
attr_accessor :total, :items_array
@@items_array = []

  def initialize(n=0)
      @total=n
  end

  def discount
    self.total = 20
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @@items_array << item
    self.total += price*quantity

  end

  def apply_discount
    #binding.pry
    self.total = @price*.8*
    puts "After the discount, the total comes to #{}"
  end

  def items
    @@items_array
  end

end
