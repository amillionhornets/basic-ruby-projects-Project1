
def encryptmessage(code, message) 
  alpha = [*('a'..'z')]
  newMessage = ""
  messageArray = message.chars
  for i in 0..messageArray.length-1 do
    newMessage+=code[alpha.find_index(messageArray[i])]
  end
  puts newMessage
end

def caesarCipher(shifts, message)
  alpha = [*('a'..'z')]
  if (shifts < 1)
    print message.downcase
    return
  end
  encryptedLetters = []
  for i in 1..shifts do
    encryptedLetters.append(alpha.shift())
  end
  for letter in encryptedLetters do
    alpha.append(letter)
  end
  encryptmessage(alpha, message.downcase)
end
