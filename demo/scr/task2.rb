# Анализ конвертов

def analysis(env1, env2)

    # Проверки
    return {:status => 'failed', :reason => 'У Вас содержаться лишние елементы в ассоциативном массиве.'} if env1.size != 2 or env2.size != 2
    return {:status => 'failed', :reason => 'В первом конверте сторона a не является числом.'} if !(env1[:a].class == Integer or env1[:a].class == Float)
    
   
    #Решение
    arr = env1.fetch_values(:a, :b)
    arr1 = []
    arr.each {|elem| arr1 << elem.to_f}
    return {:status => 'failed', :reason => 'env1 не прямоугольник'} if arr1[0] <= 0 or arr1[1] <= 0

    arr = env2.fetch_values(:c, :d)
    arr2 = []
    arr.each {|elem| arr2 << elem.to_f}
    return {:status => 'failed', :reason => 'env2 не прямоугольник'} if arr2[0] <= 0 or arr2[1] <= 0
  
    arr1.sort!
    arr2.sort!

    if arr1[0] >= arr2[0] && arr1[1] >= arr2[1]
        return 1
    elsif arr1[0] <= arr2[0] && arr1[1] <= arr2[1]
        return 2
    end
    
    diag_1 = Math.sqrt(env1[:a]**2 + env1[:b]**2)
    diag_2 = Math.sqrt(env2[:c]**2 + env2[:d]**2)
    
    if arr1[1] < diag_2     # 1 in 2
        k = arr2[0] / arr2[1]
        m = arr1[1] / arr1[0]
        tg_A = (k - m) / (1 - m * k)
        return 22 if tg_A > 0 
    end

    if arr2[1] < diag_1      # 2 in 1
        k = arr1[0] / arr1[1]
        m = arr2[1] / arr2[0]
        tg_A = (k - m) / (1 - m * k)
        return 11 if tg_A > 0 
    end
    
    return 0
    
end 


