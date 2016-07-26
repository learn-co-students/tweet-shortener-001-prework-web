require 'pry'

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
  return dictionary
end

def word_substituter(string)
  array = string.split(" ")
  x = 0

  while x < array.length
    # compare array[x] to every key in the hash and replace if needed 
    dictionary.each do |original, shortnd|
      if array[x].downcase == original
        array[x] = shortnd
      end
    end
  x = x + 1
  end
  return array.join(" ")
end

  def bulk_tweet_shortener(tweet_array)
    y = 0
    while y < tweet_array.length
      puts word_substituter(tweet_array[y])
      y = y + 1
    end
  end

  def selective_tweet_shortener(tweet)
    z = 0
    p = ""
      if tweet.length > 140
        p = word_substituter(tweet)
      else
        p = tweet
      end
      z = z + 1
    p
  end

  tweet_array = ["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!", 
    "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
  "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.",
  "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!",
  "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"]

  puts selective_tweet_shortener(tweet_array)

  def shortened_tweet_truncator(tweet)
    shortened_tweet = selective_tweet_shortener(tweet)
    truncated_tweet = ""
    if shortened_tweet.length > 140
      truncated_tweet = shortened_tweet[0...137] + "..."
    else
      truncated_tweet = shortened_tweet

    end
    return truncated_tweet
  end