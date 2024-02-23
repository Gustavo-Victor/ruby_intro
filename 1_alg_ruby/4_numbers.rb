# my_num = 3.30
# my_num2 = -11

# puts my_num
# puts my_num2


# read usert input
puts "Digite um valor numérico: "
num = gets().chomp()

# parse to a number
num = num.to_i()


# check if number is positive
if num.positive?()
  puts "O número é positivo"
else
  puts "O número é negativo"
end


# check if number is odd
if num.odd?()
  puts "O número é ímpar"
else
  puts "O número é par"
end
