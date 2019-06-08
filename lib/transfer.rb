=begin
  Transfer
  initialize
    can initialize a Transfer (FAILED - 9)
    initializes with a sender (FAILED - 10)
    initializes with a receiver (FAILED - 11)
    always initializes with a status of 'pending' (FAILED - 12)
    initializes with a transfer amount (FAILED - 13)
  #valid?
    can check that both accounts are valid (FAILED - 14)
    calls on the sender and receiver's #valid? methods (FAILED - 15)
  #execute_transaction
    can execute a successful transaction between two accounts (FAILED - 16)
    each transfer can only happen once (FAILED - 17)
    rejects a transfer if the sender doesn't have a valid account (FAILED - 18)
  #reverse_transfer
    can reverse a transfer between two accounts (FAILED - 19)
    it can only reverse executed transfers (FAILED - 20)
=end

class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, status)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = 50
  end
  
  def valid?
    
  end

  def execute_transaction
  end
  
  def reverse_transfer(account)
  end

end

