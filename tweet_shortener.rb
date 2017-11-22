def dictionary(word)
  replacements = 
{
  "hello" => "hi",
  "to" => "2",
  "too" => "2",
  "two" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "and" => "&",
  "at" => "@"
}
  if word != word.downcase && replacements[word.downcase] != nil
    return replacements[word.downcase].capitalize
  else
    return replacements[word]
  end
end


def word_substituter(input_str)
  words = input_str.split
  replacement_str = []
  words.each do |word|
    if dictionary(word) != nil
      replacement_str << dictionary(word)
    else 
      replacement_str << word
    end
  end
  replacement_str.join(" ")
end


def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each {|tweet| puts word_substituter(tweet)}
end


def selective_tweet_shortener(tweet)
  return word_substituter(tweet) if tweet.length > 140
  tweet
end


def shortened_tweet_truncator(tweet)
  return selective_tweet_shortener(tweet)[0..136] << "..." if selective_tweet_shortener(tweet).length > 140
  selective_tweet_shortener(tweet)
end