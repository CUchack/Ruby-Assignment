# I pulled this code from
# https://docs.google.com/document/d/146gCqBlJZkalX0boNa38z7UagzVxvAw1fQGfvvnr6I8/edit?pli=1
def glob_match(filenames,pattern)
  pattern.gsub!(/[\*\?\.]/,'*' => '.*', '.' => '\.', '?' => '.')
  regex = Regexp.new(pattern)
  filenames.select do |filename|
    filename =~regex
  end


end

puts '
input = puts glob_match(["part1.rb","part2.rb","part2.rb~",".part3.rb.un~"],"*part*rb?*")

output:'


puts glob_match(["part1.rb","part2.rb","part2.rb~",".part3.rb.un~"],"*part*rb?*")
