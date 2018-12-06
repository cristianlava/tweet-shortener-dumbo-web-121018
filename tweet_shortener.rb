# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => '2',
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"

  }
end

def word_substituter(tweet)
  str = tweet.split(" ")
  str.each_with_index do |name, index|
    dictionary.each do |key, value|
      if name.downcase == key
        str[index] = value
      end
    end
  end
  str.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each{ |x| puts word_substituter(x)  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end


def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)
    tweet[0..136] + "..."
  else
    tweet
  end
end
