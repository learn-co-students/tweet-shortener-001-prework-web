# Write your code here.
def dictionary
  {'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'be' => 'b',
    'for' => '4',
    'four' => '4',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
    }
end

def word_substituter(tweet)
  new_t = tweet.split(" ")
  dictionary.each do |orig, subst|
    new_t = new_t.map {|word| word.downcase.gsub(/\W+/, "") == orig ? word.downcase.gsub!(orig, subst) : word}
  end
  new_t.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  shortened = selective_tweet_shortener(tweet)
  tweet.length > 140 ? shortened[0..136]+'...' : shortened
end