# Bank Tech Test (Ruby)

![Screenshot](https://raw.githubusercontent.com/Thatguy560/Banktechtest/master/Assets/Screenshot%202020-06-30%20at%2016.59.45.png)

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

```
As a user
So I would like to be able to store money
I'd like be able to make deposits to my bank account
```
```
As a user
So I would access my savings
I'd like to be able to make a withdrawal from my bank account.
```
```
As a user
So I can see the time I made a deposit or withdrawal
I'd like to be able to see the date I made a transaction
```
```
As a user
so I would like to see my current savings
I'd like to view able to view my balance
```
```
As a user
so I can see a list of transactions I've made
I'd like to be able to print my bank statement
```

# Using the program and running in irb

$ git clone https://github.com/Thatguy560/Banktechtest.git

$ cd Banktechtest

$ If you want to run tests in the program type in rspec in the command line to check to see if the tests pass or fail and the test coverage.

$ run bundle in commandline

$ Type irb in commandline

$ require './lib/bankaccount.rb'

$ Instantiate a new instance of the bank class with bankaccount = Bankaccount.new

$ To make a deposit type in - bankaccount.deposit(100)

$ To make a withdrawal type in - bankaccount.withdraw(100)

$ To find out the balance at any point type in - bankaccount.check_current_balance

$ To print out the whole bank statement type in - bankaccount.print_statement

# Process

- Broke down task into user stories and ensured I had the main features working i.e making deposits, withdrawals, can check balance and print the statement at the end.
- Ensured I didn't put all the functionality into one class
- Looked back at old notes/instructions from earlier projects
- Created an additional helper methods class to help keep code slightly more readable

# Testing Frameworks Used

  ## Rubocop, Simplecov, rspec

  ## Test Coverage:  100.00% -- 131/131 lines in 7 files

# Example usage

 > bankaccount.deposit(50)

 > bankaccount.deposit(50)

 > bankaccount.deposit(50)

 > bankaccount.deposit(50)

 > bankaccount.withdraw(30)

 > bankaccount.withdraw(20)

 > bankaccount.withdraw(100)

 > bankaccount.print_statement

- date || credit || debit || balance
- 23/04/2020 ||  || 100.00 || 50.00
- 23/04/2020 ||  || 20.00 || 150.00
- 23/04/2020 ||  || 30.00 || 170.00
- 23/04/2020 || 50.00 ||  || 200.00
- 23/04/2020 || 50.00 ||  || 150.00
- 23/04/2020 || 50.00 ||  || 100.00
- 23/04/2020 || 50.00 ||  || 50.00
