def dictionary
{"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2', 
"for" => '4', 
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"}
# Write your code here.
end

def word_substituter(tweet)
  array = []
    tweet_array = tweet.split(' ')
      tweet_array.each do |word|
        if dictionary.keys.include?(word.downcase)
          array << dictionary[word.downcase]
        else
          array << word
        end
      end
      array.join(' ')
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
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
    word_substituter(tweet)[0..136] + ('...')
  else
    tweet
  end
end
