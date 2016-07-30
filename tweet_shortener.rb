# Write your code here.
require 'pry'

def dictionary
	{
		"hello" => "hi",
		"to" => "2",
		"two" => "2",
		"too" => "2",
		"for" => "4",
		"For" => "4",
		"four" => "4",
		"be" => "b",
		"you" => "u",
		"at" => "@",
		"and" => "&" 
	}
end

def word_substituter(tweet)
	tweet_a = tweet.split
  

  tweet_a.map! {|word|
  	if dictionary.keys.include? (word)
  		dictionary[word]
  	else
  		word
  	end}
  tweet_a.join(" ")

	
end


def bulk_tweet_shortener(tweet_array)
	short_tweet_array = tweet_array.map! {|tweet| word_substituter(tweet)}
	short_tweet_array.each do |short_tweet|
		puts "#{short_tweet}"
	end

	#tweet_array.map!(&:word_substituter).each do |short_tweet|
	#	puts "#{short_tweet.join(" ")}"
	#end
	
end

def selective_tweet_shortener(tweet)
	if tweet.length > 140
		word_substituter(tweet)
	else
		tweet
	end

end

def shortened_tweet_truncator(tweet)
	sub_tweet = word_substituter(tweet)
	if sub_tweet.length > 140
		sub_tweet = sub_tweet[0..137]
		sub_tweet[137] = "..."
		sub_tweet
	else
		sub_tweet
	end
end


def bulk_selective_shortener(tweet_array)
	short_tweet_array = tweet_array.map! { |tweet| tweet.length > 140 ? word_substituter(tweet) : tweet }
	short_tweet_array.each do |short_tweet|
		puts "#{short_tweet}"
	end	
end
