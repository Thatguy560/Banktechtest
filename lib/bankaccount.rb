require_relative 'transaction'
require_relative 'bank_statement'

class Bankaccount
  attr_reader :balance, :transaction_history   
  # use Transaction instead of Transaction.new since we're already
  # Creating a new instance of @transaction before each credit & debit transaction
  def initialize(transaction = Transaction)
    @balance = 0 
    @date = Time.now.strftime("%d/%m/%Y")
    @transaction_history = [] 
    @transaction = transaction
  end

  def balance
    @balance
  end

  def deposit(amount)
    raise "Cannot deposit a negative amount" if amount < 0

    @balance += amount
  end

  def withdraw(amount)
    raise "Cannot withdraw a negative amount" if amount < 0
    raise "Cannot withdraw more than in the bank account" if (@balance - amount) < 0

    @balance -= amount
  end

  private

  def credit_transaction(amount)
    @transaction.new(amount, 0, @balance)
  end 

  def debit_transaction(amount)
    @transaction.new(0, amount, @balance)
  end

  def new(transaction)
    @transaction_history << transaction
  end
end


