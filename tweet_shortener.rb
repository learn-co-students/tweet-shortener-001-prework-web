DICTIONARY =
{
  "hello" => "hi",
  "to" => "2" ,
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}

def word_substituter(string)
  string.split(" ").map { |word| (DICTIONARY.key?(word.downcase))? word = DICTIONARY[word.downcase] : word }.join(" ")
end

def bulk_tweet_shortener(array)
  array.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(string)
  if string.length <= 140
    string
  else
    word_substituter(string)
  end
end

def shortened_tweet_truncator(string)
  shorten = selective_tweet_shortener(string)
  if shorten.length > 140
    shorten = shorten[0..136] + "..."
  end
  shorten
end
