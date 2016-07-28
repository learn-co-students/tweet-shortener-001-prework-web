MAX_TWEET_LENGTH = 140

#Interface for mapping of words to their shortened forms
def dictionary(word)
  short_forms_dict = {
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

  short_forms_dict[word]
end

#Replace long words with their respective short forms
def word_substituter(tweet)
  shortened = []

  tweet_words = tweet.split

  tweet_words.each do |word|
    short_form = dictionary(word.downcase)
    if short_form
      shortened << short_form
    else
      shortened << word
    end
  end

  shortened.join(' ')
end

#Shorten each tweet and print the results
def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

#Shorten tweets that are more than 140 characters
def selective_tweet_shortener(tweet)

  if tweet.length > MAX_TWEET_LENGTH
    word_substituter(tweet)
  else
    tweet
  end
end

#Truncate tweets over 140 characters after shortening
def shortened_tweet_truncator(tweet)
  shortened = selective_tweet_shortener(tweet)

  if shortened.length > MAX_TWEET_LENGTH
    shortened[0...MAX_TWEET_LENGTH]
  else
    shortened
  end
end
