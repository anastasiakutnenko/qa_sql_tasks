SELECT * from twitter.users 
LEFT JOIN twitter.tweets on idusers = users_idusers
where idtweets is NULL