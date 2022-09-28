require_relative '../Bank/customer.rb'

class Account

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
            Customer.account_balance("1")     #id is stitically 1 need to make it dainamic

          when "2"  
            puts "Deposit..."  
            amount = gets.chomp.to_i
            Customer.deposit_balance("1", amount)

          when "3"   
            puts "Withdraw..." 
            amount = gets.chomp.to_i
            Customer.withdraw_balance("1", amount)
            
          when "4"  
            puts "Transfer Money..."
            Account.transfer_balance
            
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



# class Account

#   def initialize(amount)
#     @a = amount
#   end



#   def deposit_balance
#     puts "Enter the Amount you want to Deposit: "
#     @@balance += @a
#     p "your balance after deposit #{@@balance}"
#     # passbook = Transaction.new( 1 ,"deposit", "today" )
#     p "Deposit money sucessfully"

#   end

#   def withdraw_balance
#     puts "Enter the Amount you want to withdraw: "
#     if @a <= @@balance
#       @@balance -= @a
#       p "your balance after withdraw #{@@balance}"
#       if @@balance < 1000
#         p "Note: Your account has to have minimun Rs. 1000.00"
#       end
#       p "withdraw money sucessfully"
#       # Transaction.transactions
#     else
#       p "you have insufficient balance"
#     end
#   end

#   def transfer_balance
#     p "transfer money sucessfully"
#     # Transaction.transactions
#   end

#   def passbook
#     Transaction.new.transactions
#   end
  
# end
