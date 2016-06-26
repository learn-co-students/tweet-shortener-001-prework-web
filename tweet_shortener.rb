# Write your code here.
def dictionary
  {
    "hello" => 'hi',
    "to" => '2', "two" => '2', "too" => '2',
    "for" => '4', "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
  }
end

def word_substituter(tweet)
	tweet = tweet.split
	tweet.each_with_index do |word, index|
		dictionary.each do |key, substitute|
			if word.downcase == key
				tweet[index] = substitute
			end
		end
	end
	tweet.join(" ")
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
	if tweet.length > 140
	  word_substituter(tweet)[0..136] + "..."
	else
		tweet
	end
end
