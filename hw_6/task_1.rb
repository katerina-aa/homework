
def transform(str)
    ind = str.index '-'
    first_word = str.slice(0..ind - 1)
    second_word = str.slice(ind + 1..str.size)
    return first_word + second_word.capitalize
end

p transform 'background-color'
