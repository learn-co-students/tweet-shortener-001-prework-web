require 'pry'
def dictionary(word)

  dictonary = {
    "HELLO" => "hi",
    "TWO"=>"2",
    "TO"=>"2",
    "TOO"=>"2",
    "FOUR"=>"4",
    "FOR"=>"4",
    "BE" => "b",
    "YOU" => "u",
    "AT" => "@",
    "AND" => "&"
  }
  new_word = dictonary[word.upcase]
  
 return word if new_word == nil
 new_word
end

def word_substituter(tweet)
  words = tweet.split(" ")  
  shortened_words = words.map {|word| dictionary(word)}
  shortened_words.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet| 
    new_tweet = word_substituter(tweet)
    puts new_tweet
  end
end

def selective_tweet_shortener(tweet)
  return word_substituter(tweet) if tweet.length > 140
  tweet
end

def shortened_tweet_truncator(tweet)

  return (word_substituter(tweet)[0..136] + "...") if tweet.length > 140
  tweet
end
