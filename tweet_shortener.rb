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
  tweet_array = tweet.split(" ")  
   tweet_array.collect! do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
   tweet_array.join(" ")
 end

def bulk_tweet_shortener(tweets)
  tweets.each do |f|
    puts word_substituter(f)
  end
end

def selective_tweet_shortener(tweer)
  if tweer.length > 140
word_substituter(tweer)
else
  tweer
end
end

def shortened_tweet_truncator(twe)
  shortened_tweer = word_substituter(twe)
if shortened_tweer.length > 140
  truncated_tweet = shortened_tweer[0..136] + "..."
else
  shortened_tweer
end
end

















