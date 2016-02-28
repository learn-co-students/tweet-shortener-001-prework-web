def dictionary 
  dictionary = {
    "hello" => "Hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
      }
  return dictionary
end
def word_substituter(string)
  lib = dictionary
  libkeys = lib.keys
  tweet = string.split(" ")
  x = 0
  tweet.each do |comp1|
    libkeys.each do |comp2|
      if (comp1.downcase == comp2.downcase)
        tweet[x] = lib[comp2]
      end
    end
    x+= 1
  end
  return_tweet = tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweet_results = []
  tweets.each do |tweet|
    #tweet_results << word_substituter(tweet)
    puts word_substituter(tweet)
  end
  #return_tweet
end
def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end
def shortened_tweet_truncator(tweet)
  if tweet.length>140
    return_tweet = tweet[0..136] + "..."
  else 
    return_tweet = tweet
  end
  return_tweet
end