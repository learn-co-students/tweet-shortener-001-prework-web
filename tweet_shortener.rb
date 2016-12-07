def dictionary
  {
    "hello" => 'hi',
    "Hello" => "hi",
    "to" => '2',
    "To" => '2',
    "two" => '2',
    "Two" => '2',
    "too" => '2',
    "Too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "Four" => '4',
    'be' => 'b',
    'Be' => 'b',
    'you' => 'u',
    'You' => 'u',
    "at" => "@",
    "At" => "@",
    "and" => "&",
    "And" => "&"
  }
end

def word_substituter(string)
  working_array = string.split
  i = 0
  while i < working_array.length
  	if dictionary.keys.include?(working_array[i]) # if word is in dictionary
  		working_array[i] = dictionary[working_array[i]]
  	end
  	i += 1
  end
  working_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
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
    word_substituter(tweet)
    tweet[137..139] = "."
    tweet = tweet[0..139]
    tweet
  else
    tweet
  end
end
