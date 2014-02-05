def palindrome?(string)
  if string.downcase.gsub(/\W/, '') == string.downcase.reverse.gsub(/\W/, '') then
    true
  else
    false
  end
end

class String
  def palindrome?
    # Calls palindrome?(string) defined above (again)
    Object.send(:palindrome?, self)
  end
end

module Enumerable
  def palindrome?
    #tests the enumerable backwards and forwards...
    self.collect{|x| x} == self.collect{|x| x}.reverse
  end
end

s1 = "A man, a plan, a canal -- Panama"
s2 = "Madam, I'm Adam!"
s3 = "Abracadabra"
en1 = [1,2,3,2,1]
en2 = [2,3,5,32,4]

p "Palindrome as described before: (palindrome?(string))"
p s1
p palindrome?(s1)
p s2
p palindrome?(s2)
p s3
p palindrome?(s3)
p ''

p "palindrome called this way: string.palindrome?"

p s1
p s1.palindrome?
p s2
p s2.palindrome?
p s3
p s3.palindrome?
p ''

p "Palindrome using enumerables: en.palindrome?"
p en1
p en1.palindrome?
p en2
p en2.palindrome?

