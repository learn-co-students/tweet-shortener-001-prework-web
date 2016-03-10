# Write your code here.
def dictionary
dictionary =
{
:"hello" => "hi",
:"to" => "2",
:"two" => "2",
:"too" => "2",
:"for" => "4",
:"four" => "4",
:"be" => "b",
:"you" => "u",
:"at" => "@" ,
:"and" => "&"
}
end

def word_substituter(tweet_string)
dictionary =
{
:"hello" => "hi",
:"to" => "2",
:"two" => "2",
:"too" => "2",
:"for" => "4",
:"For" => "4",
:"four" => "4",
:"be" => "b",
:"you" => "u",
:"at" => "@" ,
:"and" => "&"
}

  dictionary_strings = []
tweet_array = tweet_string.split(" ")
  #input tweet is now split into individual words/strings in an array

  #tweet_array => ["Hey", "guys,", "can", "anyone", "teach", "me", "how", "to", "be", "cool?", "I", "really", "want", "to", "be", "the", "best",
 #"at", "everything,", "you", "know", "what", "I", "mean?", "Tweeting", "is", "super", "fu#n", "you", "guys!!!!"]


dictionary_keys = dictionary.keys
  dictionary_keys.collect do |x|
    dictionary_strings.push(x.to_s)
  end
 #dictionary_strings => ["hello", "to", "two", "too", "for", "four", "be", "you", "at", "and"]
 overlap = tweet_array & dictionary_strings
  #overlap = ["to", "be", "at", "you"]

  #iterate through the tweet_array. if a word in the tweet array equals a word in the overlap array, replace it with dictionary[word]

 tweet_array.each do |x|
 if overlap.include?(x) == true
   symbol = x.to_sym
y = dictionary[symbol]

   index = tweet_array.index(x)
   tweet_array.delete_at(index)
   tweet_array.insert(index, y)

 end
 end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
array_of_tweets.each do |tweet|
puts word_substituter(tweet)
end
end

def selective_tweet_shortener(tweet_string)
if tweet_string.length > 140
  word_substituter(tweet_string)
else
return tweet_string
end
end

def shortened_tweet_truncator(tweet_string)
  if tweet_string.length > 140
    tweet_string = tweet_string[0...137] <<"..."
else
    return tweet_string
  end
end





