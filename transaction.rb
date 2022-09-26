require 'securerandom'

class Transaction

  # def initialize(transaction_id, transaction_type, transaction_date) 
  #   @tid = transaction_id
  #   @ttype = transaction_type
  #   @tdate = transaction_date
  # end

  def transactions
    # p SecureRandom.uuid
    passbook = { 
                 :tid => transaction_id,
                 :ttype => transaction_type,
                 :tdate => transaction_date
               }
    puts passbook
  end
end