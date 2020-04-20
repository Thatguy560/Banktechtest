class Bankaccount
  attr_reader :balance
  
  def initialize
    @balance = 0 
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    @balance -= amount
  end

  # def balance
  #   @balance
  # end
end


