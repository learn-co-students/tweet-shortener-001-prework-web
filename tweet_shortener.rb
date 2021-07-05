require 'pry'

# Write your code here.
def dictionary
  {
  :hello => "hi",
  :to => "2",
  :two => "2",
  :too => "2",
  :for => "4",
  :four => "4",
  :be => "b",
  :you => "u",
  :at => "@",
  :and => "&"
}
end


def word_substituter(tweet)
  result_array = []
  tweet_array = tweet.split(" ")
  tweet_array.each do |word|
    count = 0
    dictionary.each do |substitute, _|
      if word.downcase == substitute.to_s 
        result_array << dictionary[substitute]
        count += 1 
      end
    end 
    if count == 0
      result_array << word
    end 
  end
  result_array.join(" ")
end  


def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
     return word_substituter(tweet)
  else
    return tweet
  end 
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet).slice(0,137) + ("...")
  else
    word_substituter(tweet)
  end
end

