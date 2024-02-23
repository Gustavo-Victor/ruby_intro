student1 = { name: 'Alberto', grade: 2, subject: 'Art' }
student2 = { name: 'Joana', grade: 0, subject: 'Biology' }
student3 = { name: 'Karen', grade: 10, subject: 'Physophy' }
students = [student1, student2, student3];

puts "-----------------------------"
def print_student_info(name, grade, subject)
  puts ("Student #{name} got a(n) #{grade.to_s()} in the subject '#{subject}'.");
  puts check_student_grade(name, grade);
  puts "-----------------------------"
end;


def check_student_grade(name = "", grade = 0)
  result = "";
case grade.to_f()
  when 0
    result =  "#{name} needs to improve a lot.";
  when 1..4
    result =  "#{name} failed school this year.";
  when 5
    result = "#{name} almost failed school and could do better.";
  when 6..9
    result = "#{name} passed school this year, congratulations!";
  when 10
    result = "#{name} got the highest grade #{name}. Very incredible student!";
  else
    result = "Invalid value...";
  end;
  return result;
end;

students.each do |student|
  print_student_info(student[:name], student[:grade], student[:subject]);
end;
