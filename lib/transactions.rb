class Transactions 
  attr_reader :credit, :debit, :balance, :date
  
  def initialize(credit, debit, balance)
    @credit = credit
    @debit = debit
    @balance = balance 
    @date = Time.now.strftime("%d/%m/%Y")
  end
end