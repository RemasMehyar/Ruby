def caesarCipher (msg,shift)
  newMsg=""
  msg.each_char do |char|
    if(char.between?("A","Z")||char.between?("a","z"))
    shift.times {char=char.next}
  end
  newMsg << char[-1]
end
puts newMsg
end
text = gets.chomp
caesarCipher(text,1)