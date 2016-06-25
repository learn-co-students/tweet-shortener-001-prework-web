def dictionary(word)

	obj = {
  	'hello'=> 'hi',
  	'to'=> '2',
    'two'=> '2',
    'too'=> '2',
  	'for'=> '4',
  	'four'=> '4',
  	'be'=> 'b',
  	'you'=> 'u',
  	'at'=> '@',
  	'and'=> '&'
  }
  	if obj[word.downcase]
  		return obj[word.downcase]
  	else
  		return word
  	end
  end

def word_substituter(string)
  new_str = []
	 string.split(' ').each do |word|
	 new_str << dictionary(word)
	end
	return new_str.join(' ')
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
  		puts word_substituter(tweet.split(' ').join(' '))
	end
end

def selective_tweet_shortener(tweet)
	# tweets.split(' ').each do |tweet|
		if tweet.length > 140
     	word_substituter(tweet)
	 	else
     	  tweet
    #  end
  end
end

def shortened_tweet_truncator(tweet)
	if selective_tweet_shortener(tweet).length > 140
		return selective_tweet_shortener(tweet).slice(0,140)
	else
		selective_tweet_shortener(tweet)
	end
end
