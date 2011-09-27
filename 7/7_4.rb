pattern = /(W|w)ilma/

while text = gets
  print text if text =~ pattern
end
