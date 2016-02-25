

def dictionary(hash)
    words =  { "Hello"=> 'hi',
       "to, two, too" => '2',
       "for, four" => '4',
       "be"=> 'b',
       'you'=> 'u',
       "at"=> "@",
       "and"=> "&" }
end

def word_substituter(text)
    new_text = text.split(' ')
    keys_words = dictionary(hash).to_a
    #break array down
  new_text.each do |str|
    count =0
    while count < keys_words.to_s.split(/\W+/).length
      box = keys_words[count].to_s.split(/[^A-Za-z0-9_@%&]/)

      if (box.include?(str.downcase) )|| (box.include?(str))
        str.replace(box.last)
      end
        count+=1
    end
   end
   return new_text.join(' ')
end


def bulk_tweet_shortener(arr)
  arr.each do |x|
   puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
     return word_substituter(tweet)
  else
    return tweet
  end
end


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).size > 140
       new_str = word_substituter(tweet)
       return new_str[0..136] + "..."
   else
      return word_substituter(tweet)
   end
end