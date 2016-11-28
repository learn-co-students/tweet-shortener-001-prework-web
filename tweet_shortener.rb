def dictionary
	{
	"hello" => "hi",
	"to" => "2",
	"two" => "2",
	"too" => "2",
	"for" => "4",
	"four" => "4",
	"be" => "b",
	"you" => "u",
	"at" => "@",
	"and" => "&"
	}
end

def word_substituter(string)
	shortened_str = []
	words = string.split(" ")
	words.each do |word|
		if dictionary.keys.include?(word.downcase)
			shortened_str << dictionary[word.downcase]
		else
			shortened_str << word
		end
	end
	shortened_str.join(" ")
end

def bulk_tweet_shortener(tweets)
	tweets.each do |tweet|
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
	if tweet.length > 140
		tweet_short = word_substituter(tweet)
		if tweet_short.length > 140
			tweet_short[0...137] + "..."
		end
	else
		tweet
	end
end