require_relative '../Bank/validetion.rb'
require_relative '../Bank/account.rb'

class Customer 

  @@status = 0 

  attr_accessor :customer_id, :customer_name, :customer_mail, :customer_address, :customer_password,  :customer_acc_no , :balance

  def initialize(customer_id, customer_name, customer_mail, customer_address, customer_password, customer_acc_no , balance)
    @customer_id = customer_id
    @customer_name = customer_name
    @customer_mail = customer_mail
    @customer_address = customer_address
    @customer_password = customer_password
    @customer_acc_no = customer_acc_no
    @balance = balance
  end

  def self.add_account(account)
    # @@account_details = account
    @@account_list ||= {} 
    @@account_list[account.customer_id] = account
    # p @@account_list
  end

  def self.retiever_acc_data(id)
    @@account_list[id]
  end

  def self.retiever_all_acc_keys
    @@account_list.keys
    # p @@account_list.keys
  end

  # def self.retiever_all_acc_each_keys
  #   @@account_list.each_key
  #   p @@account_list.each_key
  # end

  def self.log_in(customer_mail_login, customer_password_login)
      all = Customer.retiever_acc_data("1")
    
      if customer_mail_login == all.customer_mail.has_value?("1") && customer_password_login ==  all.customer_password.has_value?("1")
        # @@login_with_cust_id = 
        @@status = 1 
        Account.profile
      else
        p "Try again"
      end
 
  end


  def self.get_account_data 
 
    unless Validetion.is_a_valid_name
      puts "Enter Full Name"
      @customer_name = gets.chomp
    end

    unless Validetion.is_a_valid_email
      puts "Enter Valid Mail ID"
      @customer_mail = gets.chomp
    end

    puts "Enter Address"
    @customer_address = gets.chomp

    unless Validetion.is_a_valid_password
      puts "Set Password: must have 8 char, atleast 1 number and one capital letter"
      @customer_password = gets.chomp
    end

    puts "Customer ID"
    @customer_id = gets.chomp
    # @customer_id = Validetion.cust_id_genorater

    @customer_acc_no= Validetion.cust_acc_num

    @balance = 1000

    puts"""Account Created Secussfully
      Your Customer Id -- #{@customer_id}-
      Your Customer Account Number -- #{@customer_acc_no}-
      Your Minimum balance is -- #{@balance}-
      Knidly login"""

    cust1 = Customer.new(@customer_id, @customer_name, @customer_mail, @customer_address, @customer_password, @customer_acc_no, @balance)
    Customer.add_account(cust1)
  end

  def self.account_balance(current_id)
    cust = Customer.retiever_acc_data(current_id)
    p "Your account balance is -- #{cust.balance}"  
  end

  def self.deposit_balance(current_id, amount)
    cust = Customer.retiever_acc_data(current_id)
    puts "Enter the Amount you want to Deposit: "
    cust.balance += amount
    p "your balance after deposit #{cust.balance}"
    # passbook = Transaction.new( 1 ,"deposit", "today" )
    p "Deposit money sucessfully"
  end

    def self.withdraw_balance(current_id, amount)
      cust = Customer.retiever_acc_data(current_id)
      puts "Enter the Amount you want to withdraw: "
      if amount <= cust.balance
        cust.balance -= amount
        p "your balance after withdraw #{ cust.balance}"
        if  cust.balance < 1000
          p "Note: Your account has to have minimun Rs. 1000.00"
        end
        p "withdraw money sucessfully"
        # Transaction.transactions
      else
        p "you have insufficient balance"
      end
  end


  def log_out
    @@status = 0 
  end


end

