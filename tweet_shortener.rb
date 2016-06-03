def dictionary
  hash = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
     "four" => '4',
     "be" => 'b',
     "you" => 'u',
     "at" => "@",
     "and" => "&"
   }
end

def word_substituter(str)
  new_s = ""
  str = str.split(" ")
  str.each do |word|
    word2 = word.downcase
  if dictionary[word2] != nil
      new_w = dictionary[word2] + " "
          new_s << new_w
      else
          new_s << word + " "
      end
  end
      new_s.strip
end

def bulk_tweet_shortener(arr)

arr.each { |str| puts word_substituter(str) }

end

def selective_tweet_shortener(str)
  if str.length > 140
    word_substituter(str)
  else
    str
  end
end

def shortened_tweet_truncator(str)
new_str = word_substituter(str)
if new_str.length > 140
  new_str[0..136] + "..."
else
  new_str
end
end
