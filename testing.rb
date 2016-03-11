def shortened_tweet_truncator(string)
  finale=[]
  if string.length > 140 
    letters = string.split("")
    letters.each_with_index do |letter, index|
      if index < 136
        finale << letter
      elsif index == 137 || index == 138 || index == 139 
        finale << "."
      end
    end
    return finale.join("")
  else
    return string
  end
end

puts shortened_tweet_truncator("GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!")
