require_relative "bank_account";

class CurrentAccount < BankAccount
  attr_reader :limit;

  def initialize(number, customer, balance, limit)
    super(number, customer, balance);
    @limit = limit;
  end;

  def withdraw(value = 0)
    if value.to_i == 0
      return false;
    end;

    if (value.to_f() < 0)
      puts "\nImpossible to withdraw a negative amount.";
      return false;
    end;

    if(value.class != Float && value.class != Integer)
      puts "\nError - invalid value.";
      return false;
    end;

    if(value.to_f() > @balance.to_f() + @limit.to_f())
      puts "Insufficient funds.";
      return false;
    else
      @balance -= value.to_f();
      puts "\n$#{value.to_f()} withdraw succesfully made!";
      return true;
    end;
  end;

  def check_limit()
    return "\nYour account limit is $#{@limit}.\n";
  end;
end;
