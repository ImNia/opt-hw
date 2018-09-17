require 'csv'

def max_value(array)
    help = 0
    for i in 0..array.size
        if array[i].to_i > help
            help = array[i].to_i
        end
    end
    puts help
end

def min_value(array)
    help = array[1].to_i
    for i in 0..array.size-1
        if array[i].to_i < help
            help = array[i].to_i
        end
    end
    puts help
end

def mean_value(array)
    help = 0
    for i in 0..array.size-1
        help += array[i].to_i
    end
    help /= array.size
    return help
end

def dispersio(array)
    help = mean_value(array)
    s = 0
    for i in 0..array.size-1
        s += (array[i].to_f - help.to_f) ** 2
    end
    s *= 1/(array.size - 2).to_f
#    s = Math.sqrt(s)
    puts s
end

file_csv = CSV.read('t_4.csv')

#2-Расходы на гражданскую науку из средств федерального бюджета
array = file_csv[2]

dispersio(array)
