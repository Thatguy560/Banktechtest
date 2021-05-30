require_relative 'transaction'
require_relative 'bankstatement'

class Bankaccount
  attr_reader :balance, :transaction_history
  STARTING_BALANCE = 0
  
  def initialize(transaction = Transaction, bankstatement = Bankstatement.new)
    @balance = STARTING_BALANCE
    @transaction_history = []
    @transaction = transaction
    @bankstatement = bankstatement
  end

  def check_current_balance
    "Your current balance is £#{@balance}"
  end

  def deposit(amount)
    raise "Cannot deposit a negative amount" if amount < 0
    @balance += amount
    puts "You have deposited £#{amount} in your bank account."
    credit = credit_transaction(amount)
    @transaction_history.push(credit)
  end

  def withdraw(amount)
    raise "Cannot withdraw a negative amount" if amount < 0
    raise "Cannot withdraw more than in the bank account" if (@balance - amount) < 0
    @balance -= amount
    puts "You have withdrawn £#{amount} from your bank account."
    debit = debit_transaction(amount)
    @transaction_history.push(debit)
  end

  def print_statement
    @bankstatement.print(@transaction_history)
  end

  private

  def credit_transaction(amount)
    @transaction.new(amount, 0, @balance)
  end

  def debit_transaction(amount)
    @transaction.new(0, amount, @balance)
  end
end
