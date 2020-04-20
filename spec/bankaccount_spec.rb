require 'bankaccount'
require 'transactions'
describe Bankaccount do
  subject(:bankaccount) { described_class.new }
  
  context "creates a new bank account" do 
    it "has a default balance of 0" do 
      expect(subject.balance).to eq(0)
    end
  end
  
  context "You can make a deposit" do 
    it 'will increase the balance' do 
      subject.deposit(1000)
      expect(subject.balance).to eq(1000)
    end
  end

  context "You can make a withdrawal" do 
    it "will decrease the balance" do
      subject.deposit(3000)
      subject.withdrawal(500)
      expect(subject.balance).to eq(2500)
    end
  end
end

