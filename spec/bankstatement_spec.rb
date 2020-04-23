require 'bankstatement'

describe Bankstatement do 
  let(:transaction) { double :transaction }
  let(:bankstatement) { Bankstatement.new }

  context "will print a list of transactions" do
    it "will print a list of debits and credits with the correct format" do 
      expect(bankstatement.print_transactions).to output
    end
  end
end

