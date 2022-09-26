require_relative '../Bank/validetion.rb'
require_relative '../Bank/bank.rb'

class Customer
  @@status = 0 
  def create_account
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
    @customer_id = Validetion.cust_id_genorater
    @customer_acc_no= Validetion.cust_acc_num
    p "Account Created Secussfully - Your Customer Id -- #{@customer_id} Your Customer Account Number -- #{@customer_acc_no}  Knidly login"
  end 

  def log_in(customer_mail_login, customer_password_login)
      if @cml == @customer_mail && @cpl == @customer_password
        p "login sucessfully"
        @@status = 1 
        Bank.profile
      else
        p "Try again"
      end
  end

  def log_out
    @@status = 0 
  end
end




