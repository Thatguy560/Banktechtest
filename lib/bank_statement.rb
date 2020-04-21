class Bankstatement 

  def printed_statement
    puts print_header

  end

  def print_header
    "date || credit || debit || balance"
  end

  def formatting(input)
    input == "" ? "" : "%.2f" % input
  end
end

  # .reverse.join("\n")

# Push these credit and debits into array

# push these strings into an array and iterate through the array seperating 
# with "\n"

p "date || credit || debit || balance"
# array.reverse.join("\n") this will display the values entered in

# if Debit (push these into array)
# @transactions << "#{@date} || || #{amount} || #{@balance}"

# if Credit (push these into array)
# @transactions "#{@date} || #{amount} || || #{@balance}" Credit"

# date || credit || debit || balance
# 14/01/2012 || || 500.00 || 2500.00 Debit 
# 13/01/2012 || 2000.00 || || 3000.00 Credit 
# 10/01/2012 || 1000.00 || || 1000.00 Credit 