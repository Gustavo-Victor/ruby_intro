# puts ("Hello world") 
# puts ("Olá mundo")
# puts "Alguma coisa"
# puts 120


puts "Type a number: " ; 
number = gets ; 

numberToInt = number.to_i() ;  
rest = numberToInt % 2 ; 


if rest == 0 
    puts "Even";
else 
    puts "Odd" ; 
end ; 






