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
                insert into edge values ('-5236500556207545971', '-8042941009587951994');
insert into edge values ('1003444887933890867', '-997794657388210666');
insert into edge values ('1003444887933890867', '4366481578210982853');
insert into edge values ('1003444887933890867', '-5236500556207545971');
insert into edge values ('-997794657388210666', '1406485165207532160');
insert into edge values ('-8334565530356620058', '-2284221861111297503');
insert into edge values ('4366481578210982853', '2963181224703433697');
insert into edge values ('1003444887933890867', '-8334565530356620058');
insert into edge values ('1003444887933890867', '-7357247008567984879');
insert into nodelabels values ('1406485165207532160', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('1406485165207532160', 'startTime', '7');
insert into nodelabels values ('1406485165207532160', 'status.code', '0');
insert into nodelabels values ('1406485165207532160', 'serviceName', 'movies');
insert into nodelabels values ('-2284221861111297503', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('-2284221861111297503', 'startTime', '9');
insert into nodelabels values ('-2284221861111297503', 'status.code', '0');
insert into nodelabels values ('-2284221861111297503', 'serviceName', 'movies');
insert into nodelabels values ('2963181224703433697', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('2963181224703433697', 'startTime', '5');
insert into nodelabels values ('2963181224703433697', 'status.code', '0');
insert into nodelabels values ('2963181224703433697', 'serviceName', 'movies');
insert into nodelabels values ('4366481578210982853', 'operationName', 'HTTP GET');
insert into nodelabels values ('4366481578210982853', 'startTime', '4');
insert into nodelabels values ('4366481578210982853', 'status.code', '0');
insert into nodelabels values ('4366481578210982853', 'serviceName', 'users');
insert into nodelabels values ('-8042941009587951994', 'operationName', '/bookings/<username>');
insert into nodelabels values ('-8042941009587951994', 'startTime', '3');
insert into nodelabels values ('-8042941009587951994', 'status.code', '0');
insert into nodelabels values ('-8042941009587951994', 'serviceName', 'bookings-secondary');
insert into nodelabels values ('-8334565530356620058', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8334565530356620058', 'startTime', '8');
insert into nodelabels values ('-8334565530356620058', 'status.code', '0');
insert into nodelabels values ('-8334565530356620058', 'serviceName', 'users');
insert into nodelabels values ('-5236500556207545971', 'operationName', 'HTTP GET');
insert into nodelabels values ('-5236500556207545971', 'startTime', '2');
insert into nodelabels values ('-5236500556207545971', 'status.code', '0');
insert into nodelabels values ('-5236500556207545971', 'serviceName', 'users');
insert into nodelabels values ('-7357247008567984879', 'operationName', 'HTTP GET');
insert into nodelabels values ('-7357247008567984879', 'startTime', '1');
insert into nodelabels values ('-7357247008567984879', 'status.code', '1');
insert into nodelabels values ('-7357247008567984879', 'serviceName', 'users');
insert into nodelabels values ('1003444887933890867', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('1003444887933890867', 'startTime', '0');
insert into nodelabels values ('1003444887933890867', 'status.code', '0');
insert into nodelabels values ('1003444887933890867', 'serviceName', 'users');
insert into nodelabels values ('-997794657388210666', 'operationName', 'HTTP GET');
insert into nodelabels values ('-997794657388210666', 'startTime', '6');
insert into nodelabels values ('-997794657388210666', 'status.code', '0');
insert into nodelabels values ('-997794657388210666', 'serviceName', 'users');

