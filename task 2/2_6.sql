SELECT idtweets, tweet_text, count(idcomments) as num_of_comments from twitter.tweets 
JOIN twitter.comments on
idtweets = tweets_idtweets
group by idtweets