require 'bankaccount'
require 'transaction'
describe Bankaccount do
  let(:bankaccount) { Bankaccount.new }
  
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
  
  context "when depositing a negative amount" do
    it "will raise an error message" do 
      expect { subject.deposit(-500) }.to raise_error "Cannot deposit a negative amount"
    end
  end

  context "when withdrawing a negative amount" do
    it "will raise an error message" do 
      expect { subject.withdrawal(-500) }.to raise_error "Cannot withdraw a negative amount"
    end
  end
end


