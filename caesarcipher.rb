
def encryptmessage(code, message) 
  alpha = [*('a'..'z')]
  newMessage = ""
  messageArray = message.chars
  for i in 0..messageArray.length-1 do
    # uses the index of the nonencrypted letters to flip to encrypted letters
    newMessage+=code[alpha.find_index(messageArray[i])]
  end
  puts newMessage
end

def caesarCipher(shifts, message)
  alpha = [*('a'..'z')]
  if (shifts < 1 || shifts > 25) # Returns the message if the shift is 0
    print message.downcase
    return
  end
  encryptedLetters = []
  for i in 1..shifts do # Remove the latter half of letters to encryptedLetters array
    encryptedLetters.append(alpha.shift())
  end
  for letter in encryptedLetters do
    alpha.append(letter) # Combines the non-shifted alphabet with the encyrpted one
  end
  encryptmessage(alpha, message.downcase)
end
