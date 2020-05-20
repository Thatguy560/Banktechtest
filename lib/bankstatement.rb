class Bankstatement

  def print(transaction_history)
    @transaction_history = transaction_history
    header
    print_transactions
  end

  def print_transactions
    transaction_array = @transaction_history.map do |transaction|
      "#{transaction.date} || #{convert_to_2dp(transaction.credit)} || "\
      "#{convert_to_2dp(transaction.debit)} || #{convert_to_2dp(transaction.current_balance)}\n"
    end
    puts transaction_array.reverse.join("")
  end
end
