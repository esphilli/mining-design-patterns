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
                insert into edge values('-8404607936236421805', '1087284881388067569');
insert into edge values('-8404607936236421805', '5839420816792901605');
insert into edge values('6844297083258112402', '6960542957012415392');
insert into edge values('5839420816792901605', '1002151145879931940');
insert into edge values('-8404607936236421805', '6844297083258112402');
insert into edge values('1087284881388067569', '9200382998226529644');
insert into nodelabels values ('6960542957012415392', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('6960542957012415392', 'startTime', '4');
insert into nodelabels values ('6960542957012415392', 'status.code', '0');
insert into nodelabels values ('6960542957012415392', 'serviceName', 'movies');
insert into nodelabels values ('1002151145879931940', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('1002151145879931940', 'startTime', '6');
insert into nodelabels values ('1002151145879931940', 'status.code', '0');
insert into nodelabels values ('1002151145879931940', 'serviceName', 'movies');
insert into nodelabels values ('5839420816792901605', 'operationName', 'HTTP GET');
insert into nodelabels values ('5839420816792901605', 'startTime', '5');
insert into nodelabels values ('5839420816792901605', 'status.code', '0');
insert into nodelabels values ('5839420816792901605', 'serviceName', 'users');
insert into nodelabels values ('9200382998226529644', 'operationName', '/bookings/<username>');
insert into nodelabels values ('9200382998226529644', 'startTime', '2');
insert into nodelabels values ('9200382998226529644', 'status.code', '0');
insert into nodelabels values ('9200382998226529644', 'serviceName', 'bookings-primary');
insert into nodelabels values ('1087284881388067569', 'operationName', 'HTTP GET');
insert into nodelabels values ('1087284881388067569', 'startTime', '1');
insert into nodelabels values ('1087284881388067569', 'status.code', '0');
insert into nodelabels values ('1087284881388067569', 'serviceName', 'users');
insert into nodelabels values ('6844297083258112402', 'operationName', 'HTTP GET');
insert into nodelabels values ('6844297083258112402', 'startTime', '3');
insert into nodelabels values ('6844297083258112402', 'status.code', '0');
insert into nodelabels values ('6844297083258112402', 'serviceName', 'users');
insert into nodelabels values ('-8404607936236421805', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('-8404607936236421805', 'startTime', '0');
insert into nodelabels values ('-8404607936236421805', 'status.code', '0');
insert into nodelabels values ('-8404607936236421805', 'serviceName', 'users');

