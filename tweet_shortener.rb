def dictionary
  word_substitutes = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" =>'b',
    "you" => 'u',
    "at" => "@",  
    "and" => "&"
  }
end

def word_substituter(tweet)
  #this method splits the tweet into an array and creates an array of the keys of dictionary.
  #it then takes the first word of the tweet array and compares it to every key of the dictionary.
  #if there is a match, it replaces the word of the tweet with the value of the key in dictionary.
  #it then converts the new array with replaced words into a string and returns it. 

  substitutes = dictionary.keys #creates an array of replacement words
  split_tweet = tweet.split #creates an array of the tweet
  split_tweet.each_with_index do |word, index| #grab the new array and index numbers
    word = word.downcase
    i = 0 #create a counter, set it to 0              
    while i < substitutes.length #while counter is less than the substitutes length
      if word == substitutes[i] #if a word in the split_tweet array matches the word in substitutes
        split_tweet[index] = dictionary[word] #replace the word in split_tweet with the match from dictionary
      end
    i += 1 #increment the counter and move on to the next word
    end
  end
  new_tweet = split_tweet.join(' ') #convert the array into a string
  new_tweet #return the shortened string (tweet)
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end



def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end



def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)
  if new_tweet.length > 140
    shortened_tweet = new_tweet[0..136] + "..."
    shortened_tweet
  else
    tweet
  end
end






