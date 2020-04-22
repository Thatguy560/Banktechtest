
class Bankstatement 
  
  def print_statement(transaction_history)
    @transaction_history = transaction_history
    p "date || credit || debit || balance"
    p print_transactions
  end
 
  def print_transactions
    @transaction_history.map do |transaction|
      if transaction.transaction_type == "Deposit"
        @balance -= transaction.amount
        credit = "#{transaction.amount}" 
      else 
        @balance += transaction.amount
        debit = "#{transaction.amount}" 
      end 
      return "#{transaction.date} || #{formatting(credit)} || #{formatting(debit)} || #{formatting(@balance)}"
    end
    
    def formatting(number)
      input == 0 ? "" : "%.2f" % number
    end
  end
end

# def print_transactions
#   output = @transactions.reverse.map do |transaction|
#     "#{transaction.date} || #{format(transaction.credit)} || "\
#     "#{format(transaction.debit)} || #{format(transaction.current_balance)}\n"
#   end
#   output.join("")
# end


# if Debit ("Withdrawal")
# @transactions << "#{@date} || || #{amount} || #{@balance}"

# if Credit ("Deposit") 
# @transactions "#{@date} || #{amount} || || #{@balance}" Credit"