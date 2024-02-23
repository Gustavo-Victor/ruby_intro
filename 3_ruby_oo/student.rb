class Student

  # allow reading and writting for the following attributes
  attr_accessor :id, :name, :phone;

  # constructor
  def initialize(name, phone, id)
    @name = name;
    @phone = phone;
    @id = id;
  end;

end;
