def dictionary
wordlist = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&" }
end

def word_substituter(string)
  string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(array)
    if array.length >= 140
      word_substituter(array)
    else
      array
  end
end

def shortened_tweet_truncator(tweet)
  char136 = tweet[0..136]
  if tweet.length > 140
    printme = char136 << "..."
    word_substituter(printme)
    printme
  else
    tweet
  end
end
