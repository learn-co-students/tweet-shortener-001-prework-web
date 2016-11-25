a="Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
b="OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"
c="GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
d="New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"
e="I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."

=begin
def bulk_tweet_shortener(abc)
  puts ((((abc.sub("to ", "2 ")).sub("be ", "b ")).sub("you ", "u ")).sub("at ","@ ")).sub("too", "2")

end

#bulk_tweet_shortener(a)
#bulk_tweet_shortener(b)
#bulk_tweet_shortener(c)
#bulk_tweet_shortener(d)
#bulk_tweet_shortener(e)

xyz=[a,b,c,d,e]
def bulk_tweet_shortener(abc)
  abc.collect do |i|
  puts (((((i.to_s).sub("to ", "2 ")).sub("be ", "b ")).sub("you ", "u ")).sub("at ","@ ")).sub("too", "2")

end
=end
puts a.length
puts b.length
puts c.length
puts d.length
puts e.length
puts ""
puts ""
xyz=((((((a.gsub("to ", "2 ")).gsub("be ", "b ")).gsub("you ", "u ")).gsub(" at "," @ ")).sub("too", "2")).gsub(" and ", " & ")).gsub(" for ", " 4 ").gsub(" For ", " 4 ")
print xyz.length
if xyz.length<140
  puts xyz+xyz[0..(140-xyz.length)]
end




