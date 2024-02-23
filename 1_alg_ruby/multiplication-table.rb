resp = 's';


puts "\n";
until resp == 'n' do
  puts "Enter a number: "
  num = gets().chomp().to_f();

  if num != 0
    for count in 0..10 do
      puts ("#{num.to_s()} x #{count.to_s()} = #{(num * count).to_s()}");
    end;
  end;


  puts "\nWould you like to continue? [y/n]: ";
  resp = gets().chomp();
  puts "\n";
end;


puts "\n---------------------";
puts "-------THE END-------";
puts "---------------------\n";
