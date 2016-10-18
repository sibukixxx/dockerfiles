select CURRENT_TIMESTAMP as now
union all select now() as now -- 非標準
union all select TIMESTAMP 'now' as now;
