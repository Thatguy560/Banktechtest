require_relative 'transaction'
require_relative 'bankstatement'
require_relative 'helpermethods'
class Bankaccount
  attr_reader :balance, :transaction_history 
  
  STARTING_BALANCE = 0
  def initialize(transaction = Transaction, bankstatement = Bankstatement.new)
    @balance = STARTING_BALANCE
    @transaction_history = [] 
    @transaction = transaction
    @bankstatement = bankstatement
  end

  def current_balance
    @balance
  end

  def deposit(amount)
    raise "Cannot deposit a negative amount" if amount < 0
    increase_balance(amount)
    credit = credit_transaction(amount)
    save_transaction(credit)
  end

  def withdraw(amount)
    raise "Cannot withdraw a negative amount" if amount < 0
    raise "Cannot withdraw more than in the bank account" if (@balance - amount) < 0
    decrease_balance(amount)
    debit = debit_transaction(amount)
    save_transaction(debit)
  end

  def print_statement
    @bankstatement.print_statement(@transaction_history) 
  end

  private

  def credit_transaction(amount)
    new_deposit(amount)
  end 				

  def debit_transaction(amount)
    new_withdrawal(amount)
  end
end


