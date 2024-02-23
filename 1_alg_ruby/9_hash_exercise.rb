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


puts "#{students[0][:name]} tirou nota #{students[0][:grade].to_s()} em #{students[0][:subject]}";
puts "#{students[1][:name]} tirou nota #{students[1][:grade].to_s()} em #{students[1][:subject]}";
