require 'pry'
tweet_1 = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"
tweet_2 = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
tweet_array = [
  "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
  "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag",
  "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
  ]

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

def word_substituter(tweet) # takes a tweet string and makes substitutions
  tweet.split(' ').collect do |word| # for each word in the tweet array
    if dictionary.keys.include?(word.downcase) # if the array of dict keys includes a downcase tweet word
      word = dictionary[word.downcase] # replace the word with the associated value
    else
      word # otherwise return the original word so it doesn't show 'nil'
    end
  end.join(' ')
end

def bulk_tweet_shortener(tweets) # takes array of tweets, shortens them and puts them out
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet) # only makes subs if tweet has > 140 char
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  result = selective_tweet_shortener(tweet)
  if result.length > 140
    final_tweet = tweet[0...137] << "..."
    final_tweet
  else
    result
  end
end
