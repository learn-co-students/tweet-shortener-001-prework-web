def dictionary
words = {
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
words
end

def word_substituter(string)
	content = string.split(" ")
	solutions = dictionary
	origins = solutions.keys
	content.each_with_index do |x, index|
		origins.each do |y|
			if x.downcase == y
				content[index] = solutions[y]
			end
		end
	end
	content.join(" ")
end

def bulk_tweet_shortener(tweets)
	tweets.each do |x|
		puts word_substituter(x)
	end
end

def selective_tweet_shortener(tweet)
	if tweet.length > 140
		tweet = word_substituter(tweet)
	end
	tweet
end

def shortened_tweet_truncator(tweet)
	tweet = selective_tweet_shortener(tweet)
	if tweet.length > 140
		tweet[0...137] + "..." 
	else
		tweet
	end
end