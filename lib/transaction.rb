class Transaction
  attr_reader :date, :credit, :debit, :current_balance 
  
  def initialize(credit, debit, balance)
    @date = Time.now.strftime("%d/%m/%Y")
    @credit = credit
    @debit = debit
    @current_balance = balance
  end
end

 
