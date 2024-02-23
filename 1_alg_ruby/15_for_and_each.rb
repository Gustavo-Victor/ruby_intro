student1 = {
  name: "Alberto",
  grade: 7.60,
  subject: "Artes"
};

student2 = {
  name: "Juliana",
  grade: 9.50,
  subject: "Matemática"
};


students = [student1, student2];

puts "FOR"
for num in 1..10 do
    puts num ;
end

puts "UNTIL"
count = 10
until  count == -1 do
  puts count
  count -= 1
end

puts "EACH"
students.each do |student|
  puts ("O(A) aluno(a) #{student[:name]} tirou #{student[:grade].to_s()} na disciplina #{student[:subject]}");
end;
