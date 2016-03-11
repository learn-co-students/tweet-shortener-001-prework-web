# Write your code here.
def dictionary 
  {:hello=> "hi", 
    :to=> "2",
    :two=> "2",
    :too=> "2",
    :for => "4",
    :For => "4",
    :four=> "4",
    :be=> "b",
    :you=> "u",
    :at=> "@",
    :and => "&", 
    :a => "a"
  }
end

def word_substituter(string)
  string_words = string.split(" ")
  shorter_words=[]
  string_words.each do |word|
    if dictionary.keys.to_s.include?(word)
    dictionary.each do |key, val|
      if key.to_s == word 
        shorter_words << val
      end
    end
  else 
    shorter_words << word
  end
end
  return shorter_words.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140 
    return word_substituter(string)
  else
    return string
  end
end

def shortened_tweet_truncator(string)
  finale=[]
  if string.length > 140 
    letters = string.split("")
    letters.each_with_index do |letter, index|
      if index < 137
        finale << letter
      elsif index == 140 || index == 138 || index == 139 
        finale << "."
      end
    end
    return finale.join("")
  else
    return string
  end
end


