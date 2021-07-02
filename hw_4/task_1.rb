meet_rooms = [['XXX', 3], ['XXXXX', 6], ['XXXXXX', 9], ['XX', 2]] 

def meeting(rooms, num)
    free_chair = []
    rooms.each do |arr|
        if free_chair.sum < num
            if arr[0].length == arr[1]
                free_chair.push(0)
            else 
                free_chair.push(arr[1] - arr[0].size)
            end
        end 
    end
    free_chair.pop
    free_chair.push(num - free_chair.sum)
    return free_chair
end

print 'Введите сколько стульев Вам нужно: '
num_chair = gets.to_i

if num_chair.zero?
    print 'Game On!'
else
    answer = meeting(meet_rooms, num_chair)

    if answer.sum < num_chair
        print 'Not enough!'
    else
        print answer
    end
end

