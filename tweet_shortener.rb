# Write your code here.

def dictionary
dictionary = {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end 

def word_substituter(tweet)
	tweet.split(" ").collect do |i|
		if dictionary.include?(i.downcase)
			i=dictionary[i.downcase]
		else 
			i
		end 
	end.join(" ")

end 

def bulk_tweet_shortener(array)
	array.each do |i|
		puts word_substituter(i)
	end 
end 

def selective_tweet_shortener(tweet)
	if tweet.length > 140
		return word_substituter(tweet)
	end
	tweet
end 

def shortened_tweet_truncator(tweet)
	if word_substituter(tweet).length > 140
		return word_substituter(tweet)[0..136] + "..."
	end 
	tweet 
end 