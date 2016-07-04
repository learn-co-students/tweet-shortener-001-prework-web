# Write your code here.

def dictionary(sub_array)
  dictionary = {'hello' => 'hi', 'to' => '2', 'two' => '2', 'too' => '2', 'for' => '4', 'For' => 4, 'four' => '4', 'be' => 'b', 'you' => 'u', 'at' => '@', 'and' => '&'}

  sub_array.each_with_index do |word, index|
    dictionary.each do |key, value|
      if word == key
        sub_array[index] = value
      end
    end
  end
  sub_array.join(' ')
end


def word_substituter(string)
  word_array = string.split
  dictionary(word_array)

end


def bulk_tweet_shortener(array)
   array.each do |tweet|
     puts word_substituter(tweet)
   end
end


def selective_tweet_shortener(string)
    if string.length > 140
      word_substituter(string)
    else
      string
    end
end


def shortened_tweet_truncator(string)
  if string.length > 140
    truncated_string = word_substituter(string)
    if truncated_string.length > 140
      truncated_string[0..139]
    end
  else
    string
  end
end