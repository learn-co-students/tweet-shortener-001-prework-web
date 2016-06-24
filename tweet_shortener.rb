def word_substituter(stringWords)
  tweet=stringWords.split()
  dictionary={"hello"=>"hi","to"=>"2","two"=>"2","too"=>"2","For"=>"4","for"=>"4" ,"four"=>"4" ,"be"=>"b","you"=>"u","at"=>"@", "and"=>"&"} 
  new_string_list=[]
  tweet.each do |word|
    if dictionary.include?(word)
      new_string_list<<dictionary[word]
    else
      new_string_list<<word
    end
  end
  return new_string_list.join(" ")
end



def selective_tweet_shortener(tweet)
    
    if tweet.length > 140
      return word_substituter(tweet)
    elsif tweet.length <= 140
      return tweet
    end
end

def bulk_tweet_shortener(arrayOfTweets)
     arrayOfTweets.each do |tweet|
     puts word_substituter(tweet)
     end
end

def shortened_tweet_truncator(tweet)
  new_tweet=selective_tweet_shortener(tweet)
  if new_tweet.length> 140
    return new_tweet[0...137]+"..."
  elsif new_tweet.length< 140
    return new_tweet
  end
end

    