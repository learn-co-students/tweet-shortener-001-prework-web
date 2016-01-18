require 'pry'

def word_substituter(string)
  dictionary = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2', 
    'too' => '2',
    'for' => '4', 
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => "@",
    'and' => "&"
  }
  keys = dictionary.keys.to_a
  words = string.split(' ')
    words.each do |word|
      keys.each do |key|
        if word.downcase == key
          word.gsub!(word, dictionary[key])    
        end
      end
    end

  string = words.join(" ")
  return string
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(string)
  if string.length <= 140
    string
  else word_substituter(string).length > 140
    shortened_tweet_truncator(string)
  end
end

def shortened_tweet_truncator(string)
  if string.length < 140
    string
  else
    word_substituter(string[0..143]) + "(...)"
  end
end
