# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "Hello" => "Hi",
    "to" => "2",
    "To" => "2",
    "too" => "2",
    "Too" => "2",
    "two" => "2",
    "Two" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "Four" => "4",
    "be" => "b",
    "Be" => "B",
    "you" => "u",
    "You" => "U",
    "at" => "@",
    "At" => "@",
    "and" => "&",
    "And" => "&"
    }
end

def word_substituter(tweet)
  array = tweet.split(" ")
  new_array = array.collect do |word|
    if dictionary.keys.include?(word)
      dictionary[word]
    else
      word
    end
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  idx = 0
  while idx < tweets.size
    puts word_substituter(tweets[idx])
    idx += 1
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    shortened_tweet = word_substituter(tweet)
    shortened_tweet[137..shortened_tweet.length] = "..."
    shortened_tweet
  else
    tweet
  end
end