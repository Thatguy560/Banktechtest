require 'transaction'

describe Transaction do 

  context "Transaction type" do
    it "returns the transaction type if deposit." do 
      deposit = Transaction.new("Deposit", 500)
      expect(deposit.transaction_type).to eq("Deposit")
    end
  end

  context "Transaction amount" do
    it "returns the transaction amount if deposit." do 
      deposit = Transaction.new("Deposit", 500)
      expect(deposit.amount).to eq(500)
    end
  end

  context "Other transaction type" do
    it "returns the transaction type if withdrawal." do 
      withdraw = Transaction.new("Withdrawal", 100)
      expect(withdraw.transaction_type).to eq("Withdrawal")
    end
  end

  context "Other transaction amount" do
    it "returns the transaction amount if withdrawal." do 
      withdraw = Transaction.new("Withdrawal", 100)
      expect(withdraw.amount).to eq(100)
    end
  end

  context "it returns the date of when the deposit was created." do 
    it "should return the date of whrn the transaction was made on" do 
      deposit = Transaction.new("Deposit", 500)
      expect(deposit.date).to eq(Time.now.strftime("%d/%m/%Y"))
    end
  end

  context "it returns the date of when the withdrawal was created." do 
    it "should return the date of whrn the transaction was made on" do 
      withdraw = Transaction.new("Withdrawal", 100)
      expect(withdraw.date).to eq(Time.now.strftime("%d/%m/%Y"))
    end
  end
end 