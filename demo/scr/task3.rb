# Сортировка треугольников

def findArea sides
    p = sides.sum / 2
    area = Math.sqrt(p * (p - sides[0]) * (p - sides[1]) * (p - sides[2]))
    return area
end

def sortTriangle(hh)
    arr_symbols = []
    answer = []
    name_of_triagle = []

    hh.each do |hh_elem|
        temp_arr = []
        hh_elem[:vertices].downcase.each_char {|letter| arr_symbols << letter.to_sym}
        for i in 0..2
            temp_arr << hh_elem[arr_symbols[i]].to_f
        end

        # Проверки
        if temp_arr[0] <= 0 or temp_arr[1] <= 0 or temp_arr[2] <= 0
            return  {:status => 'failed', :reason => hh_elem[:vertices].to_s + ' имеет отрицательные стороны или равную 0'}
        end

        if temp_arr[0] + temp_arr[1] < temp_arr[2] or temp_arr[0] + temp_arr[2] < temp_arr[1] or temp_arr[2] + temp_arr[1] < temp_arr[0]
            return {:status => 'failed', :reason => hh_elem[:vertices].to_s + ' -  не треугольник'}
        end

        area = findArea temp_arr
        answer << [area, hh_elem[:vertices]] 
        arr_symbols.clear
    end

    answer.sort!
    answer.reverse!
    answer.each {|name|  name_of_triagle << name[1]}

    return name_of_triagle
end
