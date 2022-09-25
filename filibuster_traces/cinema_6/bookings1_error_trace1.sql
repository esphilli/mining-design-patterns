create table edge(
                    src varchar2[100],
                    dst varchar2[100]
                );
                create table nodelabels(
                    node varchar2[100],
                    label varchar2[100],
                    value varchar2[255]
                );
                create view reachable as
                    with recursive
                        path(x, y) as (
                            select src, dst from edge
                                union all
                            select x, dst from edge e, path p 
                                where e.src = p.y

                        )
                    select * from path;

                create view label_reach as
                    select n1.label as f_lbl, n1.value as f_val, n2.label as t_lbl, n2.value as t_val
                        from reachable p, nodelabels n1, nodelabels n2
                            where p.x = n1.node and p.y = n2.node;
                insert into edge values ('5158967522499603113', '2835084801467963551');
insert into edge values ('3961385966205116195', '5488423071595347173');
insert into edge values ('5488423071595347173', '2382202622972777139');
insert into edge values ('8738301590976747529', '-6856911845816428103');
insert into edge values ('3961385966205116195', '5158967522499603113');
insert into edge values ('3961385966205116195', '8738301590976747529');
insert into nodelabels values ('3961385966205116195', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('3961385966205116195', 'startTime', '0');
insert into nodelabels values ('3961385966205116195', 'status.code', '0');
insert into nodelabels values ('3961385966205116195', 'serviceName', 'users');
insert into nodelabels values ('5488423071595347173', 'operationName', 'HTTP GET');
insert into nodelabels values ('5488423071595347173', 'startTime', '3');
insert into nodelabels values ('5488423071595347173', 'status.code', '0');
insert into nodelabels values ('5488423071595347173', 'serviceName', 'users');
insert into nodelabels values ('5158967522499603113', 'operationName', 'HTTP GET');
insert into nodelabels values ('5158967522499603113', 'startTime', '1');
insert into nodelabels values ('5158967522499603113', 'status.code', '1');
insert into nodelabels values ('5158967522499603113', 'serviceName', 'users');
insert into nodelabels values ('8738301590976747529', 'operationName', 'HTTP GET');
insert into nodelabels values ('8738301590976747529', 'startTime', '5');
insert into nodelabels values ('8738301590976747529', 'status.code', '0');
insert into nodelabels values ('8738301590976747529', 'serviceName', 'users');
insert into nodelabels values ('2382202622972777139', 'operationName', '/bookings/<username>');
insert into nodelabels values ('2382202622972777139', 'startTime', '4');
insert into nodelabels values ('2382202622972777139', 'status.code', '0');
insert into nodelabels values ('2382202622972777139', 'serviceName', 'bookings-secondary');
insert into nodelabels values ('-6856911845816428103', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('-6856911845816428103', 'startTime', '6');
insert into nodelabels values ('-6856911845816428103', 'status.code', '0');
insert into nodelabels values ('-6856911845816428103', 'serviceName', 'movies');
insert into nodelabels values ('2835084801467963551', 'operationName', '/bookings/<username>');
insert into nodelabels values ('2835084801467963551', 'startTime', '2');
insert into nodelabels values ('2835084801467963551', 'status.code', '1');
insert into nodelabels values ('2835084801467963551', 'serviceName', 'bookings-primary');

