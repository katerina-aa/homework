cars = [
    {
        :year => 2020,
        "name" => "Skoda",
        "model" => "Karoq",
        :mileage => 10000,
        :color => "blue"
    },
    {
        :year => 2008,
        "name" => "Kia",
        "model" => "Ceed",
        :mileage => 16000,
        :color => "blue"
    },
    {
        :year => 2013,
        "name" => "Kia",
        "model" => "Soul",
        :mileage => 150000,
        :color => "white"
    },
    {
        :year => 1988,
        "name" => "Peugeot",
        "model" => "405",
        :mileage => 320000,
        :color => "blue"
    },
    {
        :year => 2017,
        "name" => "Nissan",
        "model" => "Quashkai",
        :mileage => 45000,
        :color => "violet"
    },
    {
        :year => 1972,
        "name" => "ВАЗ",
        "model" => "2103",
        :mileage => 480000,
        :color => "dark red"
    },
    {
        :year => 2002,
        "name" => "Nissan",
        "model" => "X-Trail",
        :mileage => 213000,
        :color => "green"
    }
]

def minMaxYears carr
        carr.sort_by!{ |a| a[:year] }
    return carr[0][:year], carr[-1][:year]   
end

def milesPerY carr
    y = (Time.now).year
    carr.each {|car| car["miles_per_year"] = car[:mileage] / (y - car[:year])}
    return carr
end

def countNames carr   
    stat = {}
    carr.each do |car|
        name = car["name"]
        if stat.has_key?(name)
            stat[name] += 1
        else
            stat[name] = 1
        end
       
    end
    return stat
end

def avermilesPerY carr    #Средний пробег за год
    milesPerY carr
    sumMile = 0
    carr.each {|car| sumMile += car["miles_per_year"]}
    return sumMile / carr.size
end

def averageYear carr    #Средний год
    sumYear = 0
    carr.each {|car| sumYear += car[:year]}
    return sumYear / carr.size
end

def averageAge carr    # Средний возраст
    y = (Time.now).year
    sumAge = 0
    carr.each {|car|  sumAge += (y - car[:year])}
    return sumAge / carr.size
end

def averMileage carr   #Средний пробег 
    milesPerY carr
    sumMile = 0
    carr.each {|car| sumMile += car[:mileage]}
    return sumMile / carr.size
end

def mediumMileage carr    #Медиана пробега
    arrMileage = []
    carr.each {|elem|  arrMileage << elem[:mileage]}
    arrMileage.sort!
    n = arrMileage.size
    return arrMileage[n / 2] if n.odd?
    return (arrMileage[(n / 2)] + arrMileage[(n / 2) - 1]) / 2 if n.even?
end

def mediumYear carr   #Медиана года выпуска
    arrYear = []
    carr.each {|elem|  arrYear << elem[:year]}
    arrYear.sort!
    n = arrYear.size
    return arrYear[n / 2] if n.odd?
    return (arrYear[(n / 2)] + arrYear[(n / 2) - 1]) / 2 if n.even?
end                       

def mediumAge carr   #Медиана возраста
    y = (Time.now).year
    arrAge = []
    carr.each {|car|  arrAge << (y - car[:year])}
    arrAge.sort!
    n = arrAge.size
    return arrAge[n / 2] if n.odd?
    return (arrAge[(n / 2)] + arrAge[(n / 2) - 1]) / 2 if n.even?
end

def mediumMilesPerYear carr   #Медиана пробега за год
    milesPerY carr
    arrMilesPerY = []
    carr.each {|elem|  arrMilesPerY << elem["miles_per_year"]}
    arrMilesPerY.sort!
    n = arrMilesPerY.size
    return arrMilesPerY[n / 2] if n.odd?
    return (arrMilesPerY[(n / 2)] + arrMilesPerY[(n / 2) - 1]) / 2 if n.even?
end  

def popularColor carr   #Самый популярный цвет авто (массив, если их > 1)
    stat = {}
    carr.each do |car|
        color = car[:color]
        if stat.has_key?(color)
            stat[color] += 1
        else
            stat[color] = 1
        end
    end
    arrNumber = stat.values
    popColor = []
    stat.each {|key, value| popColor << key  if value == arrNumber.max}
    return popColor[0] if popColor.size == 1
    return popColor
end

def noPopularColor carr   #Самый редкий цвет авто (массив, если их > 1)
    stat = {}
    carr.each do |car|
        color = car[:color]
        if stat.has_key?(color)
            stat[color] += 1
        else
            stat[color] = 1
        end
    end
    arrNumber = stat.values
    popColor = []
    stat.each {|key, value| popColor << key  if value == arrNumber.min}
    return popColor[0] if popColor.size == 1
    return popColor
end

print noPopularColor cars
