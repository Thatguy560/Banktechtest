require 'transaction'

describe Transaction do 

  context "creates make a deposit transaction" do 
    it "is a credit transaction" do 
      transaction = Transaction.new(500, nil, 1000)
      expect(transaction.credit).to eq 500
      expect(transaction.debit).to eq nil
      expect(transaction.balance).to eq 1000
      expect(transaction.date).to eq(Time.now.strftime("%d/%m/%Y"))
    end
  end
  
  context "creates make a withdrawal transaction" do 
    it "is a debit transaction" do 
      transaction = Transaction.new(nil, 300, 700)
      expect(transaction.credit).to eq nil
      expect(transaction.debit).to eq 300
      expect(transaction.balance).to eq 700
      expect(transaction.date).to eq(Time.now.strftime("%d/%m/%Y"))
    end
  end
end 