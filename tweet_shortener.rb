# Write your code here.
require 'pry'
def dictionary
{
"hello" => 'hi',
"to"=> '2' ,
"two" => '2' ,
"too" => '2',
"for"=> '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@" ,
"and" => "&"

  }
end


def  word_substituter (tweet)
tweetArray =tweet.split(' ')
  dictionary.each do |key,value|
    tweetArray.each_with_index do |word,index|
     if word.downcase == key.downcase
        tweetArray[index]=value  #Or  word.replace value
         end
      end
   end
    tweetArray.join(" ")
end

def bulk_tweet_shortener (array)
printA=[]
  array.each do |tweet|
  puts (word_substituter(tweet))
  end

end

def selective_tweet_shortener(tweet)
 if tweet.size >140
    word_substituter(tweet)
 else
  tweet
 end
end

def shortened_tweet_truncator(tweet)

  if tweet.size >140
    newTweet=word_substituter(tweet)
  if newTweet.length>140
   newTweet.slice!(0..139)
  end
    else
    tweet
    end
 end