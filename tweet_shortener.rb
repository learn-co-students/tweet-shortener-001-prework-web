# Write your code here.
def dictionary
  hash = {
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

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  words = dictionary.keys
  dic_hash = dictionary
  count = 0
  while count < tweet_array.length
    if dic_hash.include?(tweet_array[count].downcase)
      tweet_array[count] = dic_hash[tweet_array[count].downcase]
    end 
    count += 1
  end
  new_tweet = tweet_array.join(" ")
  puts new_tweet
  new_tweet
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    new_tweet = word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    puts tweet
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = tweet
  if tweet.length < 140
    puts tweet
  else
    new_tweet = word_substituter(tweet)
    if new_tweet.length > 140
      new_tweet = new_tweet[0..139]
    else
      puts new_tweet
    end
  end
  return new_tweet
end

