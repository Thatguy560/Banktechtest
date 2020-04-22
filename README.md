# Bank tech test

**Requirements**

Taken from https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

I added some additional functionality and edge cases for example:
- You can't make a negative withdrawal 
- You can't make a negative deposit
- You can withdraw more than what you've got saved in your balance

# User Stories

- As a user 
So I would like to be able to store money
I'd like be able to make deposits to my bank account

- As a user 
So I would access my savings
I'd like to be able to make a withdrawal from my bank account.

- As a user 
So I can see the time I made a deposit or withdrawal
I'd like to be able to see the date I made a transaction

- As a user
so I would like to see my current savings
I'd like to view able to view my balance

- As a user
  so I can see a list of transactions I've made
  I'd like to be able to print my bank statement

# Using the program and running in irb

$ 
- Type in irb in commandline followed by require './lib/bankaccount.rb'
- Instantiate a new instance of the bank class with bankaccount = Bankaccount.new
- To make a deposit type in - bankaccount.deposit(100)
- To make a withdrawal type in - bankaccount.withdraw(100)
- To find out the balance at any point type in - bankaccount.balance
- To print out the whole bank statement type in - bankaccount.print_statement

# Process


# Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

