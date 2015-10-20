def word_substituter(tweet)
  dict = {"hello" => 'hi',
  "to" => '2', "too" => '2', "two" => '2', 
  "for" => '4', "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@", 
  "and" => "&"}

  tweet_ary = tweet.split(" ")

  changed = tweet_ary.collect do |word|
    test_word = word.downcase
    if dict.keys.include?(test_word)
      word = dict[test_word]
    else
      word
    end
  end
  changed.join(' ')
end

def bulk_tweet_shortener(tweet_ary)
  tweet_ary.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)

  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    new_tweet = word_substituter(tweet)
    if new_tweet.size > 140
      new_tweet = new_tweet[0...137] + "..."
    else
      new_tweet
    end
  else
    tweet
  end
end
