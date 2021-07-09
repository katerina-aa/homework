def abbreviation(str)
    answer = ''
    size = str.count ' '
    (size + 1).times do
        ind = str.index ' '
        answer << str[0]
        str.slice!(0..ind)
    end
    return answer.upcase
end

p abbreviation 'cascading style sheets'