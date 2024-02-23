puts "Enter a number: "
num1 = gets().chomp();


puts "Enter another number: "
num2 = gets().chomp();


if num1 == num2
  puts "\nOs números são iguais.";
else
  if num1 > num2
    puts "\n#{num1.to_s()} é maior do que #{num2.to_s()}.";
  else
    puts "\n#{num1.to_s()} é menor do que #{num2.to_s()}.";
  end ;
end ;
