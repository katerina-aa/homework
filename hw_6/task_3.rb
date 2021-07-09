def urlInfo(str)
    answer = 'протокол: '
    temp_arr = str.rpartition('://')
    answer << temp_arr[0] + ', '

    ind = temp_arr[2].index '/'
    answer << 'домен: ' + temp_arr[2].slice(0..ind - 1) + ', '

    temp_arr[2].slice!(0..ind)
    answer << 'путь: ' + temp_arr[2]
    
    return answer
end

print urlInfo 'https://career.softserveinc.com/en-us/learning-and-certification/formats-2/'