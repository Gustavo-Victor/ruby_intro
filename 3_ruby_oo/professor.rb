require_relative "employee";

class Professor < Employee
  attr_accessor :subject;

  def initialize(name, id, subject)
    super(name, id);
    @subject = subject;
  end;

  def print_info()
    puts "Professor: #{@name} - Code: #{@id} - Is on vacation: #{@is_on_vacation} - Subject: #{@subject}.";
  end;
end;
