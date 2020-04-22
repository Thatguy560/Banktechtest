class Transaction
  attr_reader :transaction_type, :amount, :date
  
  def initialize(transaction_type, amount)
    @transaction_type = transaction_type
    @amount = amount
    @date = Time.now.strftime("%d/%m/%Y")
  end

  def type_of_transaction
    @transaction_type
  end

  def amount
    @amount
  end

  def transaction_date
    @date
  end
end
