select posts.*, group_concat(tags.title) from mydb.posts 
left join mydb.posts_has_tags
on posts.id = posts_has_tags.posts_id
left join mydb.tags
on tags.tag_id = posts_has_tags.tags_tag_id
group by posts.title, posts.id; 