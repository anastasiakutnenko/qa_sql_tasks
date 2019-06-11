select count(posts.id) from mydb.posts 
where day(posts.created_at) = day(curdate()-1)
