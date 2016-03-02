## dictionary

def dictionary
	{
	    "hello" => "hi", 
	    "to" => "2",
	    "too" => "2",
	    "two" => "2",
	    "for" => "4", 
	    "four" => "4",
	    "be" => "b",
	    "you" => "u",
	     "at" => "@",
	    "and" => "&"
	}	
end

def word_substituter(tweet)
	## WARNING code below is super bloated....

	## split tweet - store in array
	## iterate over each word
	## replace if word/value is included in the dictionary method
	## .keys method will be used to compare each word to the
	## keys listed in dictionary 
	## each word in the tweet should be converted to lower case

	newTweetArray = Array.new
	#tweetArray = tweet.split

	tweet.split.collect do |word|

		if dictionary.keys.include?(word.downcase)
				word = dictionary[word.downcase]
				## replace word with dictionary[:key]->value
				newTweetArray << word
				## add each modified word to array
			else 
				word = word
				newTweetArray << word
				## add unmodified word to array
		end
	end

	newTweetArray.join(" ")
	## returns new string
end


def bulk_tweet_shortener(tweets)
	tweets.collect {|tweet| puts word_substituter(tweet)}
	## iterate through array of tweets and run each through
	## the #word_substituter method and printing results
end


def selective_tweet_shortener(tweet)
	if tweet.length <= 140
		tweet
	elsif tweet.length > 140
		word_substituter(tweet)
	end
end

def shortened_tweet_truncator(tweet)
	truncTweet = String.new
	subbedTweet = word_substituter(tweet)

	if subbedTweet.length > 140
		truncTweet << subbedTweet[0..136] + "..."
		
		elsif subbedTweet.length <= 140
			truncTweet << subbedTweet

	end

	truncTweet

end
