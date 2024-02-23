class Employee

  # allow readers and writers
  attr_reader :is_on_vacation, :start_vacation_date, :end_vacation_date;
  attr_accessor :name, :id

  # constructor
  def initialize(name, id)
    @name = name;
    @id = id;
    @is_on_vacation = false;
    @start_vacation_date = nil;
    @end_vacation_date = nil;
  end;

  def start_vacation()
    @is_on_vacation = true;
    @start_vacation_date = Time.now();
    @end_vacation_date = nil;
  end;

  def end_vacation()
    @is_on_vacation = false;
    @start_vacation_date = nil;
    @end_vacation_date = Time.now();
  end;

  def print_info()
    puts "Employee: #{@name} - Code: #{@id} - Is on vacation: #{@is_on_vacation}.";
  end;

end;


