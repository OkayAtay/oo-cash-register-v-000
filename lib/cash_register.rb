require 'pry'
class CashRegister
attr_accessor :total, :items_array, :discount


  def initialize(discount=0)
      @total=0
      @discount=discount
      apply_discount
      @items_array = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @items_array << item
    self.total += price*quantity

  end

  def apply_discount
    @total = @total - (@total*@discount*0.01)
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @items_array
  end

  def void_last_transaction

  end

end
