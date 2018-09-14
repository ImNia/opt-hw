#Задача о размножении кроликов
puts "Enter the number:"
num = gets.to_i
puts "Number of rabbit:"
puts (((((1 + Math.sqrt(5))/2) ** num) - (((1 - Math.sqrt(5))/2) ** num))/Math.sqrt(5)).to_i
