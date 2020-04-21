require_relative './transaction'
require_relative './bank_statement'

class Bankaccount
  attr_reader :balance, :transaction_history 
  
  def initialize
    @balance = 0 
    @transaction_history = [] 
  end

  def deposit(amount)
    raise "Cannot deposit a negative amount" if amount < 0
    @balance += amount
  end

  def withdrawal(amount)
    raise "Cannot withdraw a negative amount" if amount < 0
    @balance -= amount
  end


end


