def dictionary(word)
  abbreviations = {
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
  abbreviations[word]
end

#Replace long words with their respective short forms
 def word_substituter(tweet)
   new_tweet = []
   words = tweet.split(" ")
   words.each do |word|
     shorter = dictionary(word.downcase)
     if shorter
       new_tweet << shorter
     else
       new_tweet << word
     end
   end
   new_tweet.join(" ")
 end

def bulk_tweet_shortener(tweets)
  for tweet in tweets
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.to_s.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).to_s.length > 140
     word_substituter(tweet)[0..136] + "..."
  else
    tweet
  end
end
