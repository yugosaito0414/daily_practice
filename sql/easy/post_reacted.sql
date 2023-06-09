SELECT 
    distinct r.post_id,  
    p.poster,
    p.post_text,
    p.post_keywords,
    p.post_date
FROM facebook_reactions as r
JOIN facebook_posts as p
ON r.post_id = p.post_id
WHERE reaction = 'heart'
