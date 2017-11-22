def dictionary
{
  "hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4' ,
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&",
  }
end

def word_substituter(tweet)
    array_tweet = tweet.split(" ")
    array_tweet.each_with_index do |check, index|
        dictionary.keys.each do |k_check|
          if check == k_check || check == k_check.capitalize
            array_tweet.delete_at(index)
            array_tweet.insert(index, dictionary[k_check])
        end
    end
end
array_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
  puts word_substituter(tweet)
  "\n"
end
end

def selective_tweet_shortener(tweet)
  if tweet.length >= 140
      word_substituter(tweet)
    else tweet
  end
end

def shortened_tweet_truncator(tweet)
 if selective_tweet_shortener(tweet).length >= 140
selective_tweet_shortener(tweet)[0..136] + "..."
  else selective_tweet_shortener(tweet)
  end
end