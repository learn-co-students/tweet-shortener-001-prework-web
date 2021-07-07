require 'pry'

def dictionary(word) 

hash = {"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2', 
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"}

  hash.each do |i, j|
    if i == word.downcase
      word = hash[i]
    end
  end

  word
end


def word_substituter(tweet)

tweet_arr = tweet.split(" ")

tweet_arr.each do |i|
  tweet_arr[tweet_arr.index(i)] = dictionary(i)
end
  
  tweet_arr.join(" ")
end

def bulk_tweet_shortener(tweets)
  newtweet = ""

  tweets.each do |i|
    newtweet = word_substituter(i)
    puts newtweet
  end

end

def selective_tweet_shortener(tweet)

  if tweet.length < 140
    tweet
  elsif tweet.length > 140
    tweet = word_substituter(tweet)
  end

end

def shortened_tweet_truncator(tweet)

  tweet = selective_tweet_shortener(tweet)

  if tweet.length > 140
    tweet = "#{tweet[0...137]}..."
  else
    tweet
  end

end









