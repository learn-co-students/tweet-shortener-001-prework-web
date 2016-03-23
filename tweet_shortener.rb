# Write your code here.
def word_substituter(tweet)
  dictionary = {
    "hello" => "hi",
    "to"  => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
   }
   tweet.split.map {|word| dictionary[word.downcase] != nil ? dictionary[word.downcase] : word}.join(" ")
end

def bulk_tweet_shortener(array_of)
  array_of.map {|t| puts word_substituter(t)}
end

def selective_tweet_shortener(string)
  string.length>140 ? word_substituter(string) : string
end

def shortened_tweet_truncator(string)
  if string.length > 140
    string = word_substituter(string)
    if string.length > 140 then string = string[0..136]+"..."end
  end
  string
end

