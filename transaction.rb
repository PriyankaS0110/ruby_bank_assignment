class Passbook
  def self.add_entry(entry)
    # p entry
    $passbook_entry ||= {} # $passbook_entry = $passbook_entry || {}
    $passbook_entry[entry.customer_id] = entry
  end

  def self.retiever_entry(entry_id)
    $passbook_entry[entry_id]
  end

end

class Transaction 
  attr_accessor :transaction_id, :customer_id, :transaction_type, :amount, :time, :receiver_cust_id

  def initialize(transaction_id, customer_id, transaction_type, amount, time, receiver_cust_id)
    @transaction_id = transaction_id
    @customer_id = customer_id
    @transaction_type =  transaction_type
    @amount = amount
    @time = time
    @receiver_cust_id = receiver_cust_id
  end

end

# cust1 = Transaction.new("3", "1", "Pri", "20", "gdfg", "fgddf")
# cust2 = Transaction.new("3", "1", "Pri", "20", "gdfg", "fgddf")
# cust3 = Transaction.new("3", "1", "Pri", "20", "gdfg", "fgddf")
# cust4 = Transaction.new("3", "1", "Pri", "20", "gdfg", "fgddf")
# cust5 = Transaction.new("3", "1", "Pri", "20", "gdfg", "fgddf")


# Passbook.add_entry(cust1)
# Passbook.add_entry(cust2)
# Passbook.add_entry(cust3)
# Passbook.add_entry(cust4)
# Passbook.add_entry(cust5)


# Passbook.retiever_entry("1")
