SELECT 
    event_name,
    COUNT(*) as event_count
FROM 
    playbook_events
WHERE device = 'macbook pro'
GROUP BY 
    event_name
ORDER BY 
    event_count DESC
