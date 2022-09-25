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
                insert into edge values ('-2460748347763306741', '-2329773094874794175');
insert into edge values ('-2460748347763306741', '7136722707762839101');
insert into edge values ('-2329773094874794175', '3326593841182190672');
insert into edge values ('7136722707762839101', '7970390463745443371');
insert into nodelabels values ('-2329773094874794175', 'operationName', 'HTTP GET');
insert into nodelabels values ('-2329773094874794175', 'startTime', '3');
insert into nodelabels values ('-2329773094874794175', 'status.code', '0');
insert into nodelabels values ('-2329773094874794175', 'serviceName', 'users');
insert into nodelabels values ('-2460748347763306741', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('-2460748347763306741', 'startTime', '0');
insert into nodelabels values ('-2460748347763306741', 'status.code', '0');
insert into nodelabels values ('-2460748347763306741', 'serviceName', 'users');
insert into nodelabels values ('7970390463745443371', 'operationName', '/bookings/<username>');
insert into nodelabels values ('7970390463745443371', 'startTime', '2');
insert into nodelabels values ('7970390463745443371', 'status.code', '0');
insert into nodelabels values ('7970390463745443371', 'serviceName', 'bookings-primary');
insert into nodelabels values ('3326593841182190672', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('3326593841182190672', 'startTime', '4');
insert into nodelabels values ('3326593841182190672', 'status.code', '0');
insert into nodelabels values ('3326593841182190672', 'serviceName', 'movies');
insert into nodelabels values ('7136722707762839101', 'operationName', 'HTTP GET');
insert into nodelabels values ('7136722707762839101', 'startTime', '1');
insert into nodelabels values ('7136722707762839101', 'status.code', '0');
insert into nodelabels values ('7136722707762839101', 'serviceName', 'users');

