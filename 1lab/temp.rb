#Перевод градусов celsius, kelvin, fahrenheit

def celsius(temp)
    puts "Enter units in which to translate: kelvin(k), fahrenheit(f)"
    units_temp = gets.chomp
    case units_temp
    when "kelvin", "k"
        puts (temp + 273.15)
    when "fahrenheit", "f"
        puts (temp * 1.8) + 32
    else
        puts "Invalid input"
    end
end

def kelvin(temp)
    puts "Enter units in which to translate: celsius(c), fahrenheit(f)"
    units_temp = gets.chomp
    case units_temp
    when "celsius", "c"
        puts (temp - 273.15)
    when "fahrenheit", "f"
        puts (temp * 1.8) - 459.67
    else
        puts "Invalid input"
    end
end

def fahrenheit(temp)
    puts "Enter units in which to translate: celsius(c), kelvin(k)"
    units_temp = gets.chomp
    case units_temp
    when "celsius", "c"
        puts (temp - 32) / 1.8
    when "kelvin", "k"
        puts (temp + 459.67) / 1.8
    else
        puts "Invalid input"
    end
end

puts "Enter temperature"
temp = gets.to_i 
puts "Enter Units of temperature: celsius(c), kelvin(k), fahrenheit(f)"
units_temp = gets.chomp 
case units_temp
when "celsius", "c"
    celsius(temp)
when "kelvin", "k"
    kelvin(temp)
when "fahrenheit", "f"
    fahrenheit(temp)
else
    puts "Invalid input"
end
