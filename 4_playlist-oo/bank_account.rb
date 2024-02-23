require_relative "customer";

class BankAccount

  attr_reader :number, :customer, :balance;

  def initialize(number, customer, balance)
    @number = number;
    @customer = customer; # @customer = Customer.new(fname, lname);
    @balance = balance;
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

    if(value.to_f() > @balance.to_f())
      puts "Insufficient funds.";
      return false;
    else
      @balance -= value.to_f();
      puts "\n$#{value.to_f()} withdraw succesfully made!";
      return true;
    end;
  end;

  def deposit(value = 0)
    if value.to_i == 0
      return false;
    end;

    if (value.to_f() < 0)
      puts "\nImpossible to deposit a negative amount.";
      return false;
    end;

    if(value.class != Float && value.class != Integer)
      puts "\nError - invalid value.";
      return false;
    end;

    @balance += value.to_f();
    puts "\nDeposit of $#{value.to_f()} succesfully made!";
    return true;
  end;

  def check_balance()
    return "\nYou currently have $#{@balance.to_f()} balance.\n";
  end;

  def print_info()
    return "\nAccount Number: #{@number}\nCustomer: #{@customer.first_name}\n";
  end;

  def transferr(account_obj, value = 0)
    if(value.to_f == 0)
      return false;
    end;

    if(account_obj == nil || account_obj.to_s().length == 0)
      puts "Error - recipient account is required.";
      return false;
    end;

    if(value.to_f < 0 )
      puts "\nError - cannot transferr negative values to another account.\n"
      return false;
    end;

    if(value.class != Float && value.class != Integer)
      puts "\nError - invalid value.\n"
      return false;
    end;

    is_transferr_accepted = withdraw(value.to_f());

    if(is_transferr_accepted)
      account_obj.deposit(value.to_f());
      puts "\nTransferr of #{value.to_f()} successfully made!"
      puts "Sender: #{self.customer.first_name} #{self.customer.last_name}"
      puts "Recipient: #{account_obj.customer.first_name} #{account_obj.customer.last_name}\n";
      return true;
    else
      puts "\nTransfer was not possible.\n"
      return false;
    end
  end;

end;
