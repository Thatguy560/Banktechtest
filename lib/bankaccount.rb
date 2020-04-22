require_relative 'transaction'
require_relative 'bankstatement'
require_relative 'helpermethods'
class Bankaccount
  attr_reader :balance, :transaction_history 
  
  DEFAULT_BALANCE = 0

  def initialize(transaction = Transaction, bankstatement = Bankstatement.new)
    @balance = DEFAULT_BALANCE
    @date = Time.now.strftime("%d/%m/%Y")
    @transaction_history = [] 
    @transaction = transaction
    @bankstatement = bankstatement
  end

  def balance
    @balance
  end

  def deposit(amount)
    raise "Cannot deposit a negative amount" if amount < 0
    increase_balance(amount)
    credit = credit_transaction(amount)
    save(credit)
  end

  def withdraw(amount)
    raise "Cannot withdraw a negative amount" if amount < 0
    raise "Cannot withdraw more than in the bank account" if (@balance - amount) < 0
    decrease_balance(amount)
    debit = debit_transaction(amount)
    save(debit)
  end

  def summary
    @bankstatement.print_statement(@transaction_history)
  end

  private

  def credit_transaction(amount)
    @transaction.new("Deposit", amount)
  end 

  def debit_transaction(amount)
    @transaction.new("Withdrawal", amount)
  end
  
  def save(transaction)
    @transaction_history.push(transaction)
  end
end


