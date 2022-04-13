-- How many reviews are written per neighborhood?

-- +------------------------+----------+
-- | Albany Park            | 2557     |
-- | Archer Heights         | 541      |
-- | Armour Square          | 4165     |
-- | Ashburn                | 274      |
-- | Auburn Gresham         | 20       |
-- | Austin                 | 1475     |
-- | Avalon Park            | 18       |
-- | Avondale               | 6784     |
-- | Belmont Cragin         | 633      |
-- | Beverly                | 382      |
-- | Bridgeport             | 5559     |
-- | Brighton Park          | 678      |
-- | Burnside               | 10       |

select 
    neighborhood,
    count (distinct r.id) as reviews
from 
    (select id, listing_id from reviews) r
    inner join (select id, neighborhood from listings) l on (r.listing_id = l.id)
group by neighborhood
order by neighborhood;
