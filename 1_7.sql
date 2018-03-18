select tag_id, tags.title as tag_title, count(posts.id) as posts_quantity from mydb.posts 
join mydb.posts_has_tags
on posts.id = posts_has_tags.posts_id
join mydb.tags
on tags.tag_id = posts_has_tags.tags_tag_id
group by tags.tag_id; 