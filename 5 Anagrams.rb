def combine_anagrams(words)

  result = Array.new;
  array = Array.new;
  i = 0;
  j = i+1;
  while words.length > 0
    array << words[i];
    #print words;
    while j < words.length
      found_anagram = false;
      if words[i].downcase.split("").sort.join == words[j].downcase.split("").sort.join

        found_anagram = true;
        array << words[j];
        words.delete_at(j);
      end
      if found_anagram == false
        j+= 1;
      end
    end
    #print array;
    words.delete(words[i]);
    result<<array;
    array = [];
    j = 1;
  end
  print result
  return result
end

input = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']
puts input
combine_anagrams(input)


#Code adapted from
#https://github.com/epson121/Ruby/blob/master/anagrams.rb
