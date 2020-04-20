Time.now.strftime("%d/%m/%Y")
The above method give you today's date as a string e.g. "20/04/2020"

# User Stories









# Some useful notes

def transac_info
        count = 0
        transac_counter = count += 1
        puts"--------------------------------"
        puts"  Transaction Lists-#{@info[:first_name]}        "
        puts"---------------------------------"
        puts "Debit   |  Credit  |  No-Trans  "
        puts"-----------Deposit---------------"
        all=@deposit.each{|trans| puts "$#{trans}"}
        puts"Total deposit"
        total=all.sum
        puts"$#{total}"
        puts"-------------withdrawal----------"
        less=@withdrawal.each{|withd| puts "$#{withd}"}
        diff =less.sum
        puts "Total withdrawal"
        puts"$#{diff}"
        puts"-----------Bank Balance----------"
        bank_bal = total + diff 
        puts "$#{bank_bal}"
    end