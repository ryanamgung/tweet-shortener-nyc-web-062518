# Write your code here.
def dictionary
 {
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

def word_substituter(tweet)
  output = []
  array = tweet.split(" ")
  bad_words = dictionary.keys
  array.map do |word|
    if bad_words.include?(word.downcase)
      word = dictionary[word.downcase]
    end
    output << word
  end
  output.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |sentence|
    puts sentence
  end
end