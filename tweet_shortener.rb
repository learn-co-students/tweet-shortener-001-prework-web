# Write your code here.
def dictionary
  {"hello" => 'hi', "to" => '2', "two" => '2', "too" => '2', "for" => '4', "four" => '4', 'be' => 'b', 'you' => 'u', "at" => "@" , "and" => "&"}
end

def word_substituter(string)
  string_array = string.split(" ")

  dictionary.each do |word, replacer|
    count = 0
    string_array.each do |comp|
      if comp.capitalize == word.to_s.capitalize
        string_array[count] = replacer.to_s
      end
    count += 1
    end
  end
  string_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.collect do |tweet|
    puts word_substituter(tweet)
  end
  array
end

def selective_tweet_shortener(string)
  alt_string = string
  if string.length > 140
    alt_string = word_substituter(string)
  end
  alt_string
end

def shortened_tweet_truncator(tweet)

  if tweet.length > 140
    alt_tweet = word_substituter(tweet)
    new_tw = alt_tweet[0...137]+"..."
    puts new_tw
    new_tw
  else
    tweet
  end

end