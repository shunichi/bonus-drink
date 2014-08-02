class BonusDrink
  def self.total_count_for(amount)
    total = 0
    bin = 0
    while amount > 0
      total += amount
      amount, bin = next_state(amount, bin)
    end
    total
  end

  def self.next_state(amount, bin)
    new_bin = (amount + bin)
    [new_bin / 3, new_bin % 3]
  end
  private_class_method :next_state
end
