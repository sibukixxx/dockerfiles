select
    string_agg(inv.col, ',')
from (
    select '1'  as col
    union all select '2'    as col
    union all select '3'    as col
) inv;
