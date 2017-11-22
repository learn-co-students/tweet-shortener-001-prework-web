require 'pry'
# Write your code here.

def dictionary
    {
    :hello => "hi",
    :to => "2",
    :too => "2",
    :two => "2",
    :four => "4",
    :For => "4",
    :for => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }
end


def word_substituter(string)
  array = string.split(" ")
  temp = [] 

  array.each do |tweet|
    tweet_symbol = tweet.to_sym

    if dictionary[tweet_symbol]
      temp << dictionary[tweet_symbol]
    else
      temp << tweet
    end
  end
  temp.join(" ")        
end


def bulk_tweet_shortener(array_tweets)

  array_tweets.each do |array|
    puts word_substituter(array)
  end

end

def selective_tweet_shortener(string)

  if(string.length > 140)
    word_substituter(string)
  else
    string
  end

end

def shortened_tweet_truncator(string)

  updated = word_substituter(string)

  if(updated.length > 140)
    n_string = updated[0..139]
    #n_string << "..."
  else
    updated
  end
  
end



