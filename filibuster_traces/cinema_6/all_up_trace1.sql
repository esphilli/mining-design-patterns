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
                insert into edge values('-8023036371632940672', '4970315097871881420');
insert into edge values('4970315097871881420', '6490103903181410921');
insert into edge values('3574990006089587550', '2161303560298318800');
insert into edge values('-8023036371632940672', '3574990006089587550');
insert into nodelabels values ('-8023036371632940672', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('-8023036371632940672', 'startTime', '0');
insert into nodelabels values ('-8023036371632940672', 'status.code', '0');
insert into nodelabels values ('-8023036371632940672', 'serviceName', 'users');
insert into nodelabels values ('6490103903181410921', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('6490103903181410921', 'startTime', '4');
insert into nodelabels values ('6490103903181410921', 'status.code', '0');
insert into nodelabels values ('6490103903181410921', 'serviceName', 'movies');
insert into nodelabels values ('4970315097871881420', 'operationName', 'HTTP GET');
insert into nodelabels values ('4970315097871881420', 'startTime', '3');
insert into nodelabels values ('4970315097871881420', 'status.code', '0');
insert into nodelabels values ('4970315097871881420', 'serviceName', 'users');
insert into nodelabels values ('2161303560298318800', 'operationName', '/bookings/<username>');
insert into nodelabels values ('2161303560298318800', 'startTime', '2');
insert into nodelabels values ('2161303560298318800', 'status.code', '0');
insert into nodelabels values ('2161303560298318800', 'serviceName', 'bookings-primary');
insert into nodelabels values ('3574990006089587550', 'operationName', 'HTTP GET');
insert into nodelabels values ('3574990006089587550', 'startTime', '1');
insert into nodelabels values ('3574990006089587550', 'status.code', '0');
insert into nodelabels values ('3574990006089587550', 'serviceName', 'users');

