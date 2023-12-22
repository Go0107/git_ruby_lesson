ary = ["東京", "大阪", "名古屋", "福岡", "札幌"]

newary = ary[1, 2]

puts("元の配列:")
ary.each do |youso|
  puts(youso)
end

puts("新しい配列:")
newary.each do |youso|
  puts(youso)
end