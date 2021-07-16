# Шахматная доска

def chessboard(l, w , s)
    
    # Проверки
    return {:status => 'failed', :reason => 'Символ должен иметь длину 1.'} if s.size != 1
    return {:status => 'failed', :reason => 'Длина и ширина шахматной доски это целые числа.'} if l.class != Integer or w.class != Integer
    return {:status => 'failed', :reason => 'Длина и ширина шахматной доски не могут быть отрицательными.'} if l < 0 or w < 0

    # Решение
    answer = ''

    line1 = (s + ' ') * (w / 2)
    line1 << s if w.odd?
    line2 = ' ' + line1.chomp(line1[-1])

    for  i in 1.. (l / 2)
        answer << line1 + "\n"
        answer << line2 + "\n"
    end

    answer << line1 if l.odd?

    return answer
end




