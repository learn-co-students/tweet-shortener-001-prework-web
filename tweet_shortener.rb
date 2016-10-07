require "pry"
###took me too many hours but i implemented this method two ways and enjoyed the results
###i like this one thouht the commented out version seems more strighrforward

def word_substituter(tweet) 

  dictionary = { "hello"=>"hi","to"=>"2","for"=>"4","be"=>"b","you"=>"u",
              "at"=>"@","and"=> "&","too"=>"2","two"=>"2","four"=>"4" }
  original_tweet =  tweet.split
  original_tweet.each do |word|  

    if dictionary.keys.include?(word.downcase)
       index = original_tweet.index(word)
       original_tweet[index] = dictionary[word.downcase]
    end
  end
  original_tweet.join(" ")

end 
# def word_substituter(tweet) 

#   dictionary = { "hello"=>"hi","to"=>"2","for"=>"4","be"=>"b","you"=>"u",
#               "at"=>"@","and"=> "&","too"=>"2","two"=>"2","four"=>"4" }
#   key_array = dictionary.keys 
#   tweet_array = tweet.split
#   short_tweet = []

#   tweet_array.each do |word|
#      if key_array.include?(word.downcase) 
# #   binding.pry
#        short_tweet << dictionary[word.downcase]
#      else
      
#       short_tweet << word
#     end
#   end

#   short_tweet.join(' ')
#  #binding.pry
# end
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














