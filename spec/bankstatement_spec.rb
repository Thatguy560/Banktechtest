require 'bankstatement'

describe Bankstatement do 
  let(:transaction) { double :transaction }
  let(:bankstatement) { double :bankstatement }

  context "printing header for bank statement" do 
    it "will print the correct columns with the right format" do 
      expect(bankstatement.header).to output("date || credit || debit || balance").to_stdout
    end
  end

  context "will print a list of transactions" do
    it "will print a list of debits and credits with the correct format" do 
      expect(bankstatement.print_transactions). to output
    end
  end
end

