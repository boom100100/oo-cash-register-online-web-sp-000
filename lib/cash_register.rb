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

    @total = @total + arg
  end

  def add_item(title, price, quantity = 1)
    self.total=(price * quantity)
    apply_discount=(@discount)
  end

  def apply_discount=(disc)
    disc = @discount
    @total = @total - (@total * (disc / 100))
    puts @total
  end
end
