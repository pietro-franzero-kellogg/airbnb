-- How many listings are in Lincoln Park?

-- +----------+
-- | 272      |
-- +----------+

select count(1) from listings where neighborhood = 'Lincoln Park';
