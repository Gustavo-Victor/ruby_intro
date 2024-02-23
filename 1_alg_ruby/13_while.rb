resp = 'y';
students = [];

while resp == 'y' do
  puts ("\nEnter the student's name: ");
  student_name = gets().chomp();

  if student_name.length != 0
    students << student_name;
  end

  puts ("\nWould you like to continue adding students? [y/n]: ")
  resp = gets.chomp;
end


puts "\n-----------------------";
puts "My list of students: "
puts "-----------------------";

total_of_students = students.length();
count = 0;


while count < total_of_students do
    puts ("[#{(count + 1).to_s()}] => #{students[count]}");
    count += 1;
end;
puts "-----------------------";
