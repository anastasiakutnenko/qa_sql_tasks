SELECT idusers, name, group_concat(follower_id) as followers from twitter.users
JOIN twitter.followers on users.idusers = followers.to_follow_id
GROUP BY idusers;