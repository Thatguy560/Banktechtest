require 'bankaccount'
# require 'transaction'
describe Bankaccount do
  let(:bankaccount) { Bankaccount.new(transaction, bankstatement) }
  let(:bankstatement) { double :bankstatement }
  let(:transaction) { double :transaction }

  context "creates a new bank account" do
    it "has a default balance of 0" do
      expect(subject.balance).to eq(0)
    end
  end

  context "You can make a deposit" do
    it 'will Credit the balance' do
      subject.deposit(1000)
      expect(subject.balance).to eq(1000)
    end
  end

  context "You can make a withdraw" do
    it "will Debit the balance" do
      subject.deposit(3000)
      subject.withdraw(500)
      expect(subject.balance).to eq(2500)
    end
  end

  it "will let you view your current balance at any point" do
    subject.deposit(1000)
    subject.withdraw(600)
    expect(subject.check_current_balance).to eq "Your current balance is £#{subject.balance}"
  end

  it "will let you print a statement from a new bank account" do
    expect(bankstatement).to receive(:print)
    bankaccount.print_statement
  end

  context "when depositing a negative amount" do
    it "will raise an error message" do
      expect { subject.deposit(-500) }.to raise_error "Cannot deposit a negative amount"
    end
  end

  context "when withdrawing a negative amount" do
    it "will raise an error message" do
      expect { subject.withdraw(-500) }.to raise_error "Cannot withdraw a negative amount"
    end
  end

  context "If you try and withdraw more money than what you've got saved in the bank." do
    it "will raise an error message" do
      expect { subject.withdraw(1) }.to raise_error "Cannot withdraw more than in the bank account"
    end
  end

  context "The 'transaction history' array" do
    it "will include deposit transactions" do
      subject.deposit(500)
      expect(subject.transaction_history.length).to eq 1
    end
  end

  context "The 'transaction history' array" do
    it "will include deposit and withdrawal transactions" do
      subject.deposit(501)
      subject.withdraw(500)
      expect(subject.transaction_history.length).to eq 2
    end
  end
end
