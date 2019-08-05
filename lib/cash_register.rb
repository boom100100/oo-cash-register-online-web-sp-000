class CashRegister

  def initialize(disc = 0)
    @total = 0
    @discount = disc
    @items = []
    apply_discount
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def total=(arg)
    @total = @total + arg
  end

  def add_item(title, price, quantity = 1)
    self.total=(price * quantity)
    for (i = 0; i < quantity; i++) do
      @items << title
    end
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total = @total - (@total * (@discount / 100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    return @items
  end

end
