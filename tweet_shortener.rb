# Write your code here.
def dictionary
  values = {
    'hello' => 'hi',
    'to'    => '2',
    'two'   => '2',
    'too'   => '2',
    'for'   => '4',
    'four'  => '4',
    'be'    => 'b',
    'you'   => 'u',
    'at'    => '@',
    'and'   => '&'
   }
end

def word_substituter(tweet)
  split_tweets = tweet.split(' ')
  replaced = split_tweets.map do |word|
    dictionary.include?(word.downcase) ? word = dictionary[word.downcase] : word
  end
  replaced.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  output = tweet[0..136] += '...'
  output
end

input = "I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. 4 real, u guys. 4 real."