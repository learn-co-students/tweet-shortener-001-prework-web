def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "for" => "4",
    "For"=> "4"
  }
end

def word_substituter(tweet)
	arr = tweet.split
	key_arr = dictionary.keys
	arr.collect! do |word|
		if key_arr.include?(word)
			word = dictionary[word]
		else
			word = word
		end
	end
	arr.join(" ")
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
  short_tweet = selective_tweet_shortener(tweet)
  if short_tweet.length > 140
    short_tweet[0..136] + "..."
  else
    short_tweet
  end
end
