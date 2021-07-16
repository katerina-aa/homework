require_relative 'scr/task1.rb'
require_relative 'scr/task2.rb'
require_relative 'scr/task3.rb'
require_relative 'scr/task4.rb'
require_relative 'scr/task5.rb'
require_relative 'scr/task6.rb'
require_relative 'scr/task7.rb'

# Шахматная доска
#print chessboard(3, 6, '*')

# Анализ конвертов
envelope1 = {:a => 3.9, :b => 4.1}
envelope2 = {:c => 3, :d => 4}
#print analysis(envelope1, envelope2)
#print "\n"

# Сортировка треугольников
triangle = 
[
    {
    :vertices => 'ABC',
    :a => 3,
    :b => 4,
    :c => 5
    },
    {
    :vertices => 'DEF',
    :d => 4,
    :e => 4,
    :f => 6
    },
    {
    :vertices => 'KNM',
    :k => 2,
    :n => 3,
    :m => 3.5
    }
]
#print sortTriangle(triangle)
#print "\n"

# Палиндром
print findPalindrome(11)
#print "\n"

# Счастливые билеты
#print tickets(0,0)
#print "\n"

# Числовая последовательность
#print numerical_sequence(5, 30)
#print "\n"

# Ряд Фибоначчи для диапазона
hh1 = {:len => 5}
hh2 = {:min => 6, :max => 34}
#print seriesFibonacci(hh1)
#print "\n"
#print seriesFibonacci(hh2)
