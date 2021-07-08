def dictionary
{
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2',
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"
}
end


def word_substituter(tweet)
  arr = tweet.split(" ")
  words = dictionary.keys
  replacements = dictionary.values
  a_index = 0
while a_index < arr.length
  	w_index = 0
  	while w_index < words.length
  		if arr[a_index].downcase == words[w_index]
  			arr.delete_at(a_index)
  			arr.insert(a_index, replacements[w_index])
  		end
  		w_index+=1
  	end
  	a_index+=1
  end
  	return arr.join(" ")

end

def bulk_tweet_shortener(array)
  array.each do |tweet|
     puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 139
    return tweet
  else word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
shorter_tweet = word_substituter(tweet)
  if shorter_tweet.length >= 139
    shorter_tweet[0..136] + "..."
  else shorter_tweet
  end
end
