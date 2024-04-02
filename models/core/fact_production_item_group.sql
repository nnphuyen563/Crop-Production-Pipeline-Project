{{
    config(
        materialized='table'
    )
}}
with item_groups as (
    select item_code,
            item_group
    from {{ ref("dim_item_group")}}
)
select 
    fact.continent,
    fact.area_code,
    fact.area,
    fact.item_code,
    fact.item,
    dim.item_group,
    fact.element_code,
    fact.element,
    fact.unit,
    fact.y1961,
    fact.y1962,
    fact.y1963,
    fact.y1964,
    fact.y1965,
    fact.y1966,
    fact.y1967,
    fact.y1968,
    fact.y1969,
    fact.y1970,
    fact.y1971,
    fact.y1972,
    fact.y1973,
    fact.y1974,
    fact.y1975,
    fact.y1976,
    fact.y1977,
    fact.y1978,
    fact.y1979,
    fact.y1980,
    fact.y1981,
    fact.y1982,
    fact.y1983,
    fact.y1984,
    fact.y1985,
    fact.y1986,
    fact.y1987,
    fact.y1988,
    fact.y1989,
    fact.y1990,
    fact.y1991,
    fact.y1992,
    fact.y1993,
    fact.y1994,
    fact.y1995,
    fact.y1996,
    fact.y1997,
    fact.y1998,
    fact.y1999,
    fact.y2000,
    fact.y2001,
    fact.y2002,
    fact.y2003,
    fact.y2004,
    fact.y2005,
    fact.y2006,
    fact.y2007,
    fact.y2008,
    fact.y2009,
    fact.y2010,
    fact.y2011,
    fact.y2012,
    fact.y2013,
    fact.y2014,
    fact.y2015,
    fact.y2016,
    fact.y2017,
    fact.y2018,
    fact.y2019
from {{ ref("fact_production") }} as fact
inner join item_groups as dim
on fact.item_code = dim.item_code