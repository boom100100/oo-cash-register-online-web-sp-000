class CashRegister

  def initialize(disc = 0)
    @total = 0
    @discount = disc
    apply_discount
  end

  def discount
    @discount
  end

  def total
    #@total = (@total - (@total * (@discount / 100)))
    @total
    #puts @total
  end

  def total=(arg)
    @total = @total + arg
  end

  def add_item(title, price, quantity = 1)
    self.total=(price * quantity)
  end
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total = @total - (@total * (@discount / 100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
end
