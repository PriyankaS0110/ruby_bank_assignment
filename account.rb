
class Account
  @@balance = 1000

  def initialize(amount)
    @a = amount
  end

  def self.account_balance
    p "your balance is #{@@balance}"
  end

  def deposit_balance
    puts "Enter the Amount you want to Deposit: "
    @@balance += @a
    p "your balance after deposit #{@@balance}"
    # passbook = Transaction.new( 1 ,"deposit", "today" )
    p "Deposit money sucessfully"

  end

  def withdraw_balance
    puts "Enter the Amount you want to withdraw: "
    if @a <= @@balance
      @@balance -= @a
      p "your balance after withdraw #{@@balance}"
      if @@balance < 1000
        p "Note: Your account has to have minimun Rs. 1000.00"
      end
      p "withdraw money sucessfully"
      # Transaction.transactions
    else
      p "you have insufficient balance"
    end
  end

  def transfer_balance
    p "transfer money sucessfully"
    # Transaction.transactions
  end

  def passbook
    Transaction.new.transactions
  end
  
end
