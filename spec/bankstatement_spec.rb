require 'bankstatement'

describe Bankstatement do 
  
  let(:bankstatement) { Bankstatement.new }
  let(:transaction_history) { [transaction1, transaction2] }
  let(:transaction1) { double(:transaction1, debit: "0.00", credit: "50.00",\
    date: "23/04/2020", current_balance: "50.00") } 
    let(:transaction2) { double(:transaction2, debit: "20.00", credit: "0.00",\
      date: "23/04/2020", current_balance: "30.00") } 
  
  context "will print a list of transactions" do
    it "will print a list of debits and credits with the correct format" do 
      statement_format = "date || credit || debit || balance\n"\
      "23/04/2020 || 0.00 || 20.00 || 30.00\n"\
      "23/04/2020 || 50.00 || 0.00 || 50.00\n"
      expect{ bankstatement.print_statement(transaction_history) }.to output(statement_format).to_stdout
    end
  end
end

