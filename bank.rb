require_relative '../Bank/account.rb'
require_relative '../Bank/customer.rb'

class Bank
  def self.profile

    action = 0

    puts"""Welcome
    Select your task here
    Enter 1 - To Check Balance
    Enter 2 - To Deposit
    Enter 3 - To Withdraw
    Enter 4 - To Transfer Money
    Enter 5 - To Open Passbook
    Enter 6 - To Logout
    Press Enter - MENU"""

    while action != "6"
      action = gets.chomp
      if @@status = 1
        case action
          when "1"  
            puts "Check Balance..."
              Account.account_balance
          when "2"  
            puts "Deposit..."  
            amount = gets.chomp.to_i
            depobal = Account.new(amount)
            depobal.deposit_balance
          when "3"   
            puts "Withdraw..." 
            amount = gets.chomp.to_i
            withbal = Account.new(amount)
            withbal.withdraw_balance
          when "4"  
            puts "Transfer Money..."
            transbal = Account.new
            transbal.transfer_balance
          when "5"   
            puts "Open Passbook..." 
            passbookbal = Account.new
            passbookbal.passbook
          when "6"   
            puts "Logout..." 
          else
            puts """Kindly Enter Valid Input
            Enter 1 - To Check Balance
            Enter 2 - To Deposit
            Enter 3 - To Withdraw
            Enter 4 - To Transfer Money
            Enter 5 - To Open Passbook
            Enter 6 - To Logout
            Press Enter - MENU"""
        end
      else
        p "Log in again"
      end  
    end 
  end
end

