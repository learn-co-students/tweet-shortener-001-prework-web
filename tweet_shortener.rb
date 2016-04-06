require "pry"

def word_substituter(tweet) 

  dictionary = { "hello"=>"hi","to"=>"2","for"=>"4","be"=>"b","you"=>"u",
              "at"=>"@","and"=> "&","too"=>"2","two"=>"2","four"=>"4" }
  key_array = dictionary.keys 
  tweet_array = tweet.split
  short_tweet = []

  tweet_array.each do |word|
     if key_array.include?(word.downcase) 
#   binding.pry
       short_tweet << dictionary[word.downcase]
     else
      
      short_tweet << word
    end
  end

  short_tweet.join(' ')
 #binding.pry
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

  short_tweet = word_substituter(tweet)
  "#{short_tweet[0..139]}" 
  # binding.pry 
end














