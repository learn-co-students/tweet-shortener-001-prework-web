def dictionary(word)

hash = {
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

return hash[word.downcase]
end

def word_substituter(string)
array = string.split(" ")
 
  array.each_with_index do |x, idx|
    if dictionary(x) != nil
     array[idx] = dictionary(x)
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |x|
    puts word_substituter(x)
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
  if tweet.length > 140
    new_tweet = word_substituter(tweet)
    new_tweet[0..136] + "..."
  else
    tweet
  end
end













# Write your code here.