class CashRegister

  def initialize(disc = 0)
    @total = 0
    @discount = disc

  end

  def discount
    @discount
  end

  def total
    @total
  end

  def total=(arg)
    apply_discount
    @total = (@total - (@total * (@discount / 100)))
    @total = @total + arg
    puts @total
  end

  def add_item(title, price, quantity = 1)
    self.total=(price * quantity)
  end
  def apply_discount
    1+1
  end
end
