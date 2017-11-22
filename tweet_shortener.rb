require 'pry'
# Write your code here.
def dictionary
	#recieve word not sentence. already split
	#find word from dictionary
  dictionary = {
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
	collection = []
	dictionarydata = dictionary
	textarray = tweet.split(" ")
	textarray.each do |phrase|
		if dictionarydata.has_key?(phrase.downcase)
			collection << dictionarydata[phrase.downcase]	
		else
			collection << phrase
		end
	end
	collection.join(" ")
end

def bulk_tweet_shortener(tweet)
	tweet.each do |tweets|
		puts word_substituter(tweets)
	end
end
	
def selective_tweet_shortener(tweet)
	if tweet.size >= 140 
		word_substituter(tweet) 
	else
		tweet
	end
end

def shortened_tweet_truncator(tweet)
	collection = ""
	if selective_tweet_shortener(tweet).size > 140
		collection = word_substituter(tweet)
		collection[0...140]
	else
		word_substituter(tweet)
	end

end
