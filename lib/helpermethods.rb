def increase_balance(amount)
  @balance += amount
end

def decrease_balance(amount)
  @balance -= amount
end

def new_deposit(amount)
  @transaction.new(amount, 0, @balance)
end

def new_withdrawal(amount)
  @transaction.new(0, amount, @balance)
end

def header
  puts "date || credit || debit || balance\n"
end

def convert_to_2dp(number)
  number == 0 ? "" : "%.2f" % number
end

def save_transaction(transaction)
  @transaction_history.push(transaction)
end
