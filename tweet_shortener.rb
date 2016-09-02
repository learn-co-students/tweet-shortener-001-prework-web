# Write your code here.
def dictionary
	dictionary = {
		'hello' => 'hi',
		'to' => '2',
		'two' => '2',
		'too' => '2',
		'for' => '4',
		'four' => '4',
		'be' => 'b',
		'you' => 'u',
		'at' => '@',
		'and' => '&'
	}
end

def word_substituter(tweet)
	tweet_arr = tweet.split(" ")
	shorten_tweet = []
	
	tweet_arr.each_with_index do |word, index|
		dictionary.each do |compared_word, replaced|
			if word == compared_word
				tweet_arr[index] = replaced	
			elsif word == compared_word.capitalize
				tweet_arr[index]= replaced.capitalize
			end
		end	
	end
	shorten_tweet = tweet_arr.join(" ")
end

#tweet = "hello I'll be there at two pm"
#word_substituter(tweet)

def bulk_tweet_shortener (tweets)
	tweets.collect do |tweet|
		puts word_substituter(tweet)
	end	
end

def selective_tweet_shortener(tweet_one)
	if tweet_one.length > 140
		word_substituter(tweet_one)
	else
		tweet_one
	end
end

def shortened_tweet_truncator(tweet_one)
	if tweet_one.length > 140
		short_tweet = word_substituter(tweet_one)
		if short_tweet.length > 140
			short_tweet[0...140] 
		else
			short_tweet
		end
	else
		tweet_one
	end
end






