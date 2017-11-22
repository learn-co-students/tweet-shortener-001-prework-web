def dictionary
  dictionary = { 'hello' => 'hi',
                 'to' => '2',
                 'two' => '2',
                 'too' => '2',
                 'for' => '4',
                 'four' => '4',
                 'be' => 'b',
                 'you' => 'u',
                 'at' => '@',
                 'and' => '&' }
end

def word_substituter(tweet)
  words = tweet.split
  tweet_abbrevs = dictionary
  keys = tweet_abbrevs.keys

  words.map! do |word|
    downcase_word = word.downcase
    if keys.include?(downcase_word)
      word = tweet_abbrevs[downcase_word]
    else
      word
    end
  end

  words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  return word_substituter(tweet) if tweet.length > 140
  tweet
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  shortened_tweet = "#{shortened_tweet[0..136]}..." if tweet.length > 140

  shortened_tweet
end




