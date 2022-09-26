create table edge (
                    src varchar2[100],
                    dst varchar2[100]
                );
                create table nodelabels (
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
                insert into edge values('-8526092751838693290', '3225219309970024644');
insert into edge values('-2564743473767533025', '7288599683494091369');
insert into edge values('-2564743473767533025', '-8526092751838693290');
insert into edge values('2297170144702038280', '-1534418888372876628');
insert into edge values('-2564743473767533025', '2297170144702038280');
insert into edge values('7288599683494091369', '6664539422235299471');
insert into nodelabels values ('3225219309970024644', 'operationName', '/bookings/<username>');
insert into nodelabels values ('3225219309970024644', 'startTime', '4');
insert into nodelabels values ('3225219309970024644', 'status.code', '0');
insert into nodelabels values ('3225219309970024644', 'serviceName', 'bookings-secondary');
insert into nodelabels values ('2297170144702038280', 'operationName', 'HTTP GET');
insert into nodelabels values ('2297170144702038280', 'startTime', '1');
insert into nodelabels values ('2297170144702038280', 'status.code', '1');
insert into nodelabels values ('2297170144702038280', 'serviceName', 'users');
insert into nodelabels values ('7288599683494091369', 'operationName', 'HTTP GET');
insert into nodelabels values ('7288599683494091369', 'startTime', '5');
insert into nodelabels values ('7288599683494091369', 'status.code', '0');
insert into nodelabels values ('7288599683494091369', 'serviceName', 'users');
insert into nodelabels values ('-1534418888372876628', 'operationName', '/bookings/<username>');
insert into nodelabels values ('-1534418888372876628', 'startTime', '2');
insert into nodelabels values ('-1534418888372876628', 'status.code', '1');
insert into nodelabels values ('-1534418888372876628', 'serviceName', 'bookings-primary');
insert into nodelabels values ('6664539422235299471', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('6664539422235299471', 'startTime', '6');
insert into nodelabels values ('6664539422235299471', 'status.code', '0');
insert into nodelabels values ('6664539422235299471', 'serviceName', 'movies');
insert into nodelabels values ('-8526092751838693290', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8526092751838693290', 'startTime', '3');
insert into nodelabels values ('-8526092751838693290', 'status.code', '0');
insert into nodelabels values ('-8526092751838693290', 'serviceName', 'users');
insert into nodelabels values ('-2564743473767533025', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('-2564743473767533025', 'startTime', '0');
insert into nodelabels values ('-2564743473767533025', 'status.code', '0');
insert into nodelabels values ('-2564743473767533025', 'serviceName', 'users');

