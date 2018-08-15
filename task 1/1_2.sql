select count(posts.id) from mydb.posts 
where posts.created_at = curdate();