# Write your code here.
def dictionary
  dictionary = {
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

def word_substituter(tweet)
  
  wordlist = dictionary
  subs = wordlist.keys
  tweet_array = tweet.split
  
  short_tweet_array = tweet_array.collect do |word|
    subs.include?(word.downcase) ? word = wordlist[word.downcase] : word = word
  end
  
  short_tweet_array.join(" ")
  
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  tweet.length < 140 ? tweet : word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? tweet[0..136] + "..." : tweet
end