# Write your code here.
def dictionary(word)
  dictionary = {
    "hello" => "ih",
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

  dictionary.each do |index, value|
    if word == index || word.downcase == index
      return value
    end
  end
  return word
end

def word_substituter(string)
  
  stringArray = string.split(" ")
  newArray = []
  stringArray.each do |index|
    newWord = dictionary(index)
    newArray << newWord
  end
  newArray = newArray.join(" ")
end

def bulk_tweet_shortener(tweets)
  l = tweets.length
  i = 0
  while i < l do
    puts "#{word_substituter(tweets[i])}"
    i += 1
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    newTweet = word_substituter(string)
    return newTweet
  else
    return string
  end
end

def shortened_tweet_truncator(string)
  string = selective_tweet_shortener(string)
  if string.length > 140
    return string[0..135] + "(..)"
  else
    return string
  end
end

