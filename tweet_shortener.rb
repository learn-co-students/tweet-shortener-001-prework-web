def dictionary
dictionary = {
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
end


def word_substituter(string)
  words = string.split
  new_words = words.map do |word|
    if dictionary.keys.include?(word.downcase)
      dictionary[word.downcase]
    else
      word
    end
  end

  new_words.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string)
  string.length <= 140 ? string : word_substituter(string)
end

def shortened_tweet_truncator(string)
  if selective_tweet_shortener(string) == string
    string
  else
    selective_tweet_shortener(string)[0..136] + "..."
  end
end