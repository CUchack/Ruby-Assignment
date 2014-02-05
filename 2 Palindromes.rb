def palindrome?(string)
  if string.downcase.gsub(/\W/, '') == string.downcase.reverse.gsub(/\W/, '') then
    puts true
  else
    puts false
  end
end

palindrome?("A man, a plan, a canal -- Panama")

palindrome?("Madam, I'm Adam!")

palindrome?("Abracadabra")
