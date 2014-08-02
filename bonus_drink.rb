class BonusDrink
  def self.total_count_for(amount)
    rest = amount
    bin = 0
    total = 0
    while rest > 0
      total += rest
      bin += rest
      rest = bin / 3
      bin %= 3
    end
    total
  end
end