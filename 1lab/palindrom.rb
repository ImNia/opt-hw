#Определение палиндрома
puts "Type the word"
word = gets.chomp

for i in 0..(word.size / 2)
    if word[i] == word[word.size - (i + 1)]
        if i == (word.size / 2)
            puts "Palindrom"
        end
        next
    else
        puts "Not palindrom"
        break
    end
end
