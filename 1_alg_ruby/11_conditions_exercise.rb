student1 = {
  name: "Alberto",
  grade: 3.60,
  subject: "Artes"
};

student2 = {
  name: "Juliana",
  grade: 9.50,
  subject: "Matemática"
};


students = [student1, student2];

if students[0][:grade] >=5
  puts "#{students[0][:name]} foi aprovado(a) em #{students[0][:subject]}";
else
  puts "#{students[0][:name]} foi reprovado(a) em #{students[0][:subject]}";
end


if students[1][:grade] >=5
  puts "#{students[1][:name]} foi aprovado(a) em #{students[1][:subject]}";
else
  puts "#{students[0][:name]} foi reprovado(a) em #{students[1][:subject]}";
end
