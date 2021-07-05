# Write your code here.
def dictionary
  {
  :hello => "hi",
  :to => "2",
  :two => "2",
  :too => "2",
  :for => "2",
  :four => "4",
  :be => "b",
  :you => "u",
  :at => "@",
  :and => "&"
}
end

def word_substituter(tweet)
  tweet_array = tweet.split.each do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  tweet_array.join(" ")
end


def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

=begin
def selective_tweet_shortener(tweet)
  if tweet.length > 140
     return word_substituter(tweet)
  else
    return tweet
end


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..137] + ("...")
  else
    word_substituter(tweet)
  end
end
=end
