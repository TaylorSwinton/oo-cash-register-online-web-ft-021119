class CashRegister

  attr_accessor :total, :discount, :cart

  def initialize(discount = 0)
      @total = 0
      @discount = discount
      @cart = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @cart << item
    end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end

    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    @cart
  end

  def void_last_transaction

  end

end
