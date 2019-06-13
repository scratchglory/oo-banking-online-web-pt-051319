=begin
    BankAccount
  #initialize
    can initialize a Bank Account (FAILED - 1)
    initializes with a name (FAILED - 2)
    always initializes with balance of 1000 (FAILED - 3)
    always initializes with a status of 'open' (FAILED - 4)
    can't change its name
  #deposit
    can deposit money into its account (FAILED - 5)
  #display_balance
    can display its balance (FAILED - 6)
  #valid?
    is valid with an open status and a balance greater than 0 (FAILED - 7)
  #close_account
    can close its account (FAILED - 8)
=end
require 'pry'

class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(amount)
  # binding.pry
   new_balance =  @balance += amount
   new_balance
  end
  
  def display_balance
    "Your balance is $#{@balance}."
  end
  
  def valid?
    if @balance > 0 && status == "open"
      true
    else
      false
    end
  end
    
  def close_account
     @status = "closed"
  end
end
