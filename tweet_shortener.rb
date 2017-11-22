require 'pry'
# Write your code here.

def dictionary
  substitutes = {
      'hello' => 'hi',
      'to'    => '2',
      'two'   => '2',
      'too'   => '2',
      'for'   => '4',
      'four'  => '4',
      'be'    => 'b',
      'you'   => 'u',
      'at'    => '@',
      'and'   => '&'
  }
end


def word_substituter(tweets)
 tweet_word = tweets.split(' ')
 count = 0

 while count < tweet_word.size
   if dictionary.keys.include?(tweet_word[count].downcase)
     tweet_word[count] = dictionary[tweet_word[count].downcase]
   end
   count += 1
 end

 tweet_word.join(' ')
end


def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end

end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  tweet
end


def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = tweet[1..137] += '...'
  end
  tweet
end


=begin
tweet_one =   "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
tweet_two =   "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"
tweet_three = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
tweet_four =  "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"
tweet_five =  "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
tweets = [tweet_one, tweet_two, tweet_three, tweet_four, tweet_five]
word_substituter(tweet_one)
=end
