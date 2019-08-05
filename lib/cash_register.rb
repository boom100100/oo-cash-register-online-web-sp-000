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

  def total=(newItem)

    @total = @total + newItem
  end

  def total=(discount, dummy = 0)

    @total = dummy + @total - (@total * (discount / 100))
  end

  def add_item(title, price, quantity = 1)
    self.total=(price * quantity)
    apply_discount
  end

  def apply_discount
    self.total=(@discount)
    puts total
  end
end
