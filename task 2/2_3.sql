SELECT idusers, name, count(idusers) as num_of_followers from twitter.users
JOIN twitter.followers on users.idusers = followers.to_follow_id
GROUP BY idusers;
