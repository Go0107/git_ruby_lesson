def time(second)
    if second >= 0 && second < 86400
        h = second / 3600
        m =(second % 3600) / 60 
        s =(second % 3600) % 60 
        puts "#{h}:#{m}:#{s}"
    else
        puts "0 <= second < 86400の範囲で指定してください"
    end
end

time(100000)