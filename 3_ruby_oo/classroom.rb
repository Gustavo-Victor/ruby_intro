require_relative "student";

class Classroom
  # allow readers and writers to the following attributes
  public attr_accessor :name, :number, :professor_id ;
  public attr_reader :students; # reading is public
  private attr_writer :students; # writting is private


  # constructor
  def initialize(name, number, professor_id)
    @name = name;
    @number = number;
    @professor_id = professor_id;
    @students = [];
  end;


  def add_student(student)
    @students << student;
  end


  def print_total_of_students()
    return @students.length();
  end;

end;

# classroom
my_classroom = Classroom.new("third grade C", 123, 1111);

puts my_classroom.name;
puts my_classroom.number;
puts my_classroom.professor_id;
puts my_classroom.students; # nothing

# student
my_student = Student.new("Gustavo", "22222-2222", 1);
my_student2 = Student.new("Guilhreme", "55555-5555", 2);
my_student3 = Student.new("Giovanna", "77777-7777", 3);
my_student4 = Student.new("Adriana", "33333-3332", 4);


# add students
my_classroom.add_student(my_student);
my_classroom.add_student(my_student2);
my_classroom.add_student(my_student3);
my_classroom.add_student(my_student4);


# my_classroom.students = [] # students property is readonly;

#print students
my_classroom.students.each do |student|
  puts "#{student.id} - #{student.name}";
end;

# total of students
number_of_students = my_classroom.print_total_of_students();
puts "This classroom has #{number_of_students} students.";
