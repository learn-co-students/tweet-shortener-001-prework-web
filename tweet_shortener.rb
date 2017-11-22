def dictionary 
{
 "hello" => "hi",
 "to" => "2",
 "two" => "2",
 "too" => "2",
 "for" => "4",
 "four" => "4",
 "be" => "b",
 "you" => "u",
 "at" => "@",
 "and" => "&"}

end # Write your code here.

def word_substituter(tweet)


  tweet.split.collect do |x|
     if dictionary.keys.include?(x.downcase) then 
     x = dictionary[x.downcase] 
   else 
  x  
  end
  end.join(" ") 

 
end 
def bulk_tweet_shortener(tweets)

  tweets.collect do |x|
    puts word_substituter(x)
  end 

end 

def selective_tweet_shortener(tweeter)

  if tweeter.length > 140 
   word_substituter(tweeter) 
  else 
    tweeter
  end
end

def shortened_tweet_truncator(tweeting)
 if word_substituter(tweeting).length > 140
  tweeting[0..136] + ("...")
else
  tweeting
end  
  

end 