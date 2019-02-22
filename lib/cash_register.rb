class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
      @total = 0
      @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    if @discount == 0
      return ""
    end

    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end

end
