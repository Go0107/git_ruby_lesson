def train_fare(age)
    # じょうけんぶんき
    if age >= 12 && age <= 150
        puts 200
    elsif age >= 6 && age < 12
        puts 100
    elsif age < 6 && age >= 0
        puts 0
    else
        puts "0以上150以下の整数を入力してください"
    end
end

train_fare(12)
train_fare(6)
train_fare(5)
train_fare(160)