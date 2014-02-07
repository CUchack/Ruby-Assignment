
def count_words(string)
  items = Hash.new(0)
  string.downcase.gsub(/\W/,' ').split.each do |i|
    items[i] +=1
  end
  puts items
end

count_words("A man, a plan, a canal -- Panama")
count_words "Doo bee doo bee doo"


# I found this example code on the Ruby forums at
# https://www.ruby-forum.com/topic/84374
puts glob_match(["part1.rb","part2.rb","part2.rb~",".part3.rb.un~"],"*part*rb?*")
