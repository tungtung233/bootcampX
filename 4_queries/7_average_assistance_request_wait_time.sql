-- calculate the average time it takes to start an asisstance request

SELECT AVG(started_at - created_at) AS average_wait_time
FROM assistance_requests