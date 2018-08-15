SELECT tweets.users_idusers as userid, u.name as username, tweets.tweet_text, tweets.created_at from twitter.tweets
JOIN twitter.users u on u.idusers = tweets.users_idusers
WHERE users_idusers = 2
OR users_idusers IN (SELECT follower_id FROM twitter.followers WHERE to_follow_id=2)
order by tweets.created_at desc;