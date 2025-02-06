



def substrings(target)
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  wordCount = Hash.new(0) # Makes a new hash map. {} doesnt work for some reason
  targetWords = target.split(" ")
  targetWords.each do |words|
    dictionary.each do |term|
      wordCount ||= 0 # if a word isn't in my hash add it && set count to 0
      wordCount[term] += 1 if words.downcase.include?(term)
    end
  end
  puts wordCount
end
