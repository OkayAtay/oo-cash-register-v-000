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

  def add_item(item, price, quantity=1)
    (@items_array << item)*quantity
    @total += price*quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total - (@total*@discount*0.01)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items_array
  end

  def void_last_transaction

    @items_array.last @price = 0
    @items_array

  end

end
