class Account
  attr_reader :name;
  attr_reader :balance;
  def initialize(name, balance=100)
    @name = name;
    @balance = balance;
  end

  public
  def display_balance(pin_number)
    if(pin_number == pin)
      puts @balance;
    else
      puts pin_error;
    end
  end

  def withdraw(pin_number, amount)
    if(pin_number == pin)
      @balance -= amount;
    else
      puts pin_error;
    end
  end

  private
  def pin
    @pin = 1234;
  end

  def pin_error
    return "Access denied: incorrect PIN.";
  end
end
  
checking_account = Account.new("James", 2000);

checking_account.display_balance(1234);
checking_account.withdraw(1234, 200)
checking_account.display_balance(1234);

checking_account.withdraw(2013, 200)

  
  