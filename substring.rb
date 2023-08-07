dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substring(text,dictionary)
    hash = Hash.new
    loweredWord=text.downcase
    dictionary.each do |word|
        hash[word]=loweredWord.scan("#{word}").count if loweredWord.include?(word)
    end
    hash
end
p substring("Howdy partner, sit down! How's it going?",dictionary)
