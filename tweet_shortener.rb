def dictionary
  words = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&',
  }
end 

def word_substituter(tweet)
  split_tweet = tweet.split(' ')
  new_array = []
  split_tweet.each do |word|
    if dictionary.keys.include?(word.downcase)
      new_array << dictionary[word.downcase]
    else
      new_array << word
    end
  end
  new_array.join(' ')
end

def bulk_tweet_shortener(tweet)
  tweet.each do |word|
    puts word_substituter(word)
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
  new_tweet = word_substituter(tweet)
  if new_tweet.length > 140
    new_tweet[0..136] + "..."
  else
    tweet
  end
end
