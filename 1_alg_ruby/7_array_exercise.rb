students = ["André", "Sophia", "Laura"];
grades = [5, 6, 8];

students << "Paulo";
grades << 7.5


puts ("#{students[0]} tirou nota #{grades[0].to_s()}");
puts ("#{students[1]} tirou nota #{grades[1].to_s()}");
puts ("#{students[2]} tirou nota #{grades[2].to_s()}");
puts ("#{students[3]} tirou nota #{grades[3].to_s()}");


puts ("Essa turma possui #{students.length().to_s()} participantes");
