# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter (tweet)
  words_to_be_shortened = tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  words_to_be_shortened.join(" ")
end

def bulk_tweet_shortener (tweet_array)
  tweet_array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener (tweet)
  if tweet.length >= 140
     word_substituter(tweet)
   else
     tweet
   end
end

def shortened_tweet_truncator (tweet)
  shortened_tweet = word_substituter(tweet)
    if shortened_tweet.length >= 140
      shortened_tweet[0...135] + "(...)"
    else
      shortened_tweet
    end
end
