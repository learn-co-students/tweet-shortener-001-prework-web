# def word_substituter(tweet)
#   tweet_arr = tweet.split(" ")

#   tweet_arr.collect do |word|
#     word = dictionary(word)
#   end

# tweet_arr.join(" ")

# end

# def dictionary(word)
#   dictionary = 
#   {"hello" =>'hi', "to" => '2' ,"two" => '2',  "too" => '2' ,
# "for" =>'4', 'four' => '4','be' =>'b','you' =>'u',"at" =>"@" ,"and" => "&"}

#   dictionary.each do |key, value|
#     if word == key
#       word = value
#     else
#       word = word
#     end
#   end

# end
def dictionary#(word) #<< #why won't it work if i put the argument to be acceptd here?
 
  {"hello" =>'hi', "to" => '2' ,"two" => '2',  "too" => '2' ,
"for" =>'4', 'four' => '4','be' =>'b','you' =>'u',"at" =>"@" ,"and" => "&"}


end
def word_substituter(tweet)
  
  tweet_arr = tweet.split
  tweet_arr.map! do |word|
    
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word = word
    end
  end
  tweet_arr.join(" ")

end
def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140 
     word_substituter(tweet)
     if word_substituter(tweet).length > 140
      word_substituter(tweet)[0..136] + "..."
     else
      word_substituter(tweet)
      end
  else
     tweet
  end
end

