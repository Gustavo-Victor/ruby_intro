puts "Enter your name: "
name = gets().chomp();

puts "Enter your final grade: "
final_grade = gets().chomp();

final_grade = final_grade.to_f();

case final_grade
  when 0
    puts "#{name}, you got 0. You need to improve a lot.";
  when 1..4
    puts "#{name}, you failed school this year. You need to push yourself harder.";
  when 5
    puts "#{name}, you almost failed school, you can do better than this.";
  when 6..9
    puts "Congratulations, #{name}! You passed school this year.";
  when 10
    puts "You got the highest grade #{name}, you're an incredible student!";
  else
    puts "Invalid value...";
end
