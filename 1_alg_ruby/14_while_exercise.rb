# student1 = {
#   name: "Alberto",
#   grade: 7.60,
#   subject: "Artes"
# };

# student2 = {
#   name: "Juliana",
#   grade: 9.50,
#   subject: "Matemática"
# };


# students = [student1, student2];
# total_of_students = students.length();


resp = "s";
students = [];


while resp != "n" do
  # name
  puts ("Enter the student's name: ");
  student_name = gets().chomp();

  while (student_name.length) == 0 do
    puts "Name is required.";
    puts "Please, enter the student's name again: ";
    student_name = gets().chomp();
  end;

  # grade
  puts ("Enter the student's grade: ");
  student_grade = gets().chomp();

  while (student_grade.to_s().length) == 0 do
    puts "Grade is required.";
    puts "Please, enter the student grade again: ";
    student_grade = gets().chomp();
  end;

  # subject
  puts ("Enter the student's subject: ");
  student_subject = gets().chomp();

  while (student_subject.length) == 0 do
    puts "Subject is required.";
    puts "Enter the student's subject again: ";
    student_subject = gets().chomp();
  end;

  student_obj = {
    name: student_name,
    grade: student_grade,
    subject: student_subject
  };

  students << student_obj ;

  puts "\nWould you like to continue? [y/n]: ";
  resp = gets().chomp();
  puts "\n--------------------";
end;


total_of_students = students.length();
count = 0;


puts "\n--------------------";
puts "My list of students";
puts "--------------------";
while count < total_of_students do
  puts ("[#{(count + 1).to_s()}] => #{students[count]}");
  count += 1;
end;
puts "--------------------\n";
