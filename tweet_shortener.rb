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

def word_substituter(tweet)
  array = []
  split_tweet = tweet.split
  split_tweet.each do |word|
    if dictionary[word.downcase]
      word = dictionary[word.downcase]
      array << word
    else
      array << word
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
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
  short_tweet = selective_tweet_shortener(tweet)
  if short_tweet.length > 140
    truncated = short_tweet[0...140]
    truncated[137...140] = "..."
    truncated
  else
    tweet
  end
end
