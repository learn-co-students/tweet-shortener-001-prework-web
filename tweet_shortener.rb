def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => 2,
    "two" => 2,
    "too" => 2,
    "for" => 4,
    "four" => 4,
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(' ')
  words_to_change = dictionary.keys
  tweet_array.map! do |word|
    if words_to_change.include? word.downcase
      word = dictionary[word.downcase]
    else
      word
    end
  end
  tweet_shortened = tweet_array.join(' ')
  tweet_shortened
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
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
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..135] + ' ' + '...'
  else
    tweet
  end
end
