require 'transactions'

describe Transactions do 

  context "creates make a deposit transaction" do 
    it "is a credit transaction" do 
      transactions = Transactions.new(500, nil, 1000)
      expect(transactions.credit).to eq 500
      expect(transactions.debit).to eq nil
      expect(transactions.balance).to eq 1000
      expect(transactions.date).to eq(Time.now.strftime("%d/%m/%Y"))
    end
  end
  
  context "creates make a withdrawal transaction" do 
    it "is a debit transaction" do 
      transactions = Transactions.new(nil, 300, 700)
      expect(transactions.credit).to eq nil
      expect(transactions.debit).to eq 300
      expect(transactions.balance).to eq 700
      expect(transactions.date).to eq(Time.now.strftime("%d/%m/%Y"))
    end
  end
end 