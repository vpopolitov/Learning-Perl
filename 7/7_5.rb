pattern = /fred.*wilma|wilma.*fred/

while text = gets
  print text if pattern =~ text
end
