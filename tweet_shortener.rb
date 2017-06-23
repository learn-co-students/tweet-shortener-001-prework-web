require 'pry'

def dictionary
 dictionary = {
  'hello' =>'hi',
  'to' =>'2', 
  'two' =>'2', 
  'too' =>'2', 
  'for' => '4',
  'For' => '4',
  'four' => '4',
  'be' => 'b',
  'you' => 'u',
  'at' => '@', 
  'and' => '&'
}
end

def word_substituter(tweet)
  new_tweet = tweet.split(" ")

  i = 0
  while i < new_tweet.length
    dictionary.each do |k,v|
      if new_tweet[i] == k
        new_tweet[i] = v
      end
    end
    i += 1
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweet_array)

  tweet_array.each do |tweet|
    puts "#{word_substituter(tweet)}"
  end
end

def selective_tweet_shortener(tweet)

if tweet.length > 140

 new_tweet = tweet.split(" ")

   i = 0
    while i < new_tweet.length
      dictionary.each do |k,v|
        if new_tweet[i] == k
          new_tweet[i] = v
        end
      end
      i += 1
    end
    new_tweet.join(" ")

else tweet
end 
end  

def shortened_tweet_truncator(tweet)

new_tweet = selective_tweet_shortener(tweet)

  if new_tweet.length > 140
    "#{new_tweet[0..136]}..."
  else new_tweet
  end
end  

