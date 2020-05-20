require 'transaction'

describe Transaction do

  context "credit transaction" do
    it "makes a deposit" do
      transaction = Transaction.new(200, nil, 500)
      expect(transaction.credit).to eq(200)
      expect(transaction.debit).to eq(nil)
      expect(transaction.current_balance).to eq(500)
      expect(transaction.date).to eq(Time.now.strftime("%d/%m/%Y"))
    end
  end

  context "debit transaction" do
    it "makes a withdrawal" do
      transaction = Transaction.new(nil, 100, 400)
      expect(transaction.credit).to eq(nil)
      expect(transaction.debit).to eq(100)
      expect(transaction.current_balance).to eq(400)
      expect(transaction.date).to eq(Time.now.strftime("%d/%m/%Y"))
    end
  end
end
