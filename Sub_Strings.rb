# > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   > substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }

# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary)
#  as the second argument.

#  It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

def substrings(word,dict)
    valid_str = []
    substring_hash = {}
    word_arr = word.split(" ").each do |i|
    valid_str << dict.filter{|w| i.downcase.include?(w.downcase) === true }
    end

    valid_str.flatten.each do |w|
        substring_hash[w] ? substring_hash[w] += 1 : substring_hash[w] = 1

    end
    return substring_hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p(substrings("Howdy partner, sit down! How's it going?",dictionary))
