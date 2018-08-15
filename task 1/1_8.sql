select author, group_concat(tags.title) as tag_title, count(distinct tags.tag_id) as tags_quantity_per_user from mydb.posts 
join mydb.posts_has_tags
on posts.id = posts_has_tags.posts_id
join mydb.tags
on tags.tag_id = posts_has_tags.tags_tag_id
group by posts.author
order by count(distinct tags.tag_id) desc limit 5; 