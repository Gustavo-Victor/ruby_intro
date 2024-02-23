# string_example = "A minha" + " string";
# puts (string_example);

# puts("Laranja");
# puts("Laranja".length);
# puts("Campus Code");
# puts("Campus Code".upcase());
# puts("Campus Code".downcase());


# name = "Gustavo"
# age = "20"

# puts "My name is " + name + " and I am " + age + " years old."
# puts "My name has #{name.length.to_s()} characters";



puts('What is your name? ');
name = gets().chomp();

puts ('How old are you? ');
age = gets().chomp();

puts("\nWelcome #{name}! You are #{age.to_s()} years old and your name has #{name.length.to_s()} characters.\n")
