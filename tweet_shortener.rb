def dictionary
{
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
}

end

def word_substituter(str)

  arr = str.split(" ")

  arr.each_with_index do |word, i|
    dictionary.keys.each do |dw|
      if word.downcase == dw
        arr[i] = dictionary[dw]
      end
    end
  end
  
  arr.join(" ")
end

def bulk_tweet_shortener(tweets)

  tweets.each {|tweet| puts word_substituter(tweet)}

end

def selective_tweet_shortener(tweet)

  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end

end

def shortened_tweet_truncator(tweet)

  tweet = selective_tweet_shortener(tweet)
  tweet.length > 140 ? tweet[0..136].concat("...") : tweet

end