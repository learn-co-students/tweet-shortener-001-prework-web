def test
  "Hey guys, can anyone teach me how to be cool? 
  I really want to be the best at everything, 
  you know what I mean? Tweeting is super fun you guys"
end

def ta
["Hey guys, can anyone teach me how to be cool? 
  I really want to be the best at everything, 
  you know what I mean? Tweeting is super fun you guys!!!!",

"OMG you guys, you won't believe how sweet my kitten is. 
My kitten is like super cuddly and too cute to be believed right?",

"I'm running out of example tweets for you guys, which is weird, 
because I'm a writer and this is just writing and I tweet all day. 
For real, you guys. For real."]

end

def test_l
  "I'm running out of example tweets for you guys, which is weird, 
because I'm a writer and this is just writing and I tweet all day. 
For real, you guys. For real."
end


def dictionary
{"hello" => "hi", 
"two" => 2, 
"too" => 2, 
"to" => 2, 
"for" => 4,
"four" => 4,
"be" => "b", 
"you" => "u", 
"at" => "@", 
"and" => "&"}
end

def word_substituter(tweet)
  tweet.split.collect do |x| #break up string into array
    if dictionary.keys.include?(x.downcase) #this is really clear
      x = dictionary[x.downcase] #This is where the magic happens
    else                         #resetting x's value to equal what dictionary has
      x                          #as it's keys. Because when you call on a hash's key you get it's value.
    end                          #So calling on dictionary["hello"] you get => "hi"
  end.join(" ") #this joins the whole array back together
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |x|      #Each element in the array do x, it becomes the argument for word_substituter.
    puts word_substituter(x)   #deceptively simple, make the method you alread made do the work for you.
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
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + ("...") #instead of trying to change the end with 
  else          #tweet[140..-1], it is better to print everything from [0..136] then add the ending
    tweet
  end

end







