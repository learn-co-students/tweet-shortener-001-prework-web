def dictionary
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
  "and" => "&",
  "#" => "/#"
}
end
#could think of a way to check for capital versions of each
def word_substituter(string)
#  dictionary.has_key("hello") == true
  replace= []
 
  replace << string.split.each do |word| 
    if dictionary.has_key?("#{word}") == true
     word.replace(dictionary["#{word}"])
    else word
      
    end
    
  end   
  replace.flatten.join(" ")
end

#array = ["Hey guys, can you", "anyone teach me how to", "be cool?", "I really want to be", "the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"]

def bulk_tweet_shortener(array)
  replace= []
 
  array.each do |string|
    replace << string.split.each do |word| 
      if dictionary.has_key?("#{word}") == true
       word.replace(dictionary["#{word}"])
      else word
      end
    end
    
  end   

  replace.collect do |tweet| puts tweet.join(" ") end
end
#string = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"
def selective_tweet_shortener(string)
  if string.length < 140 
    string
  else 
    word_substituter(string)
  end
end
#selective_tweet_shortener(string)

def shortened_tweet_truncator(string)
  word_substituter(string)
  if string.length > 140
    string[0..135].split.push("...").join(" ")
  else string
  end
end


#string = "Hi there, I am a string in this interesting and informative example"
 
#string[0..10].split.push("...").join(" ")
