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
                insert into edge values ('-977612751900315097', '7726427157566928879');
insert into edge values ('-2433171337588004127', '6659475544466198818');
insert into edge values ('-4159305149793763536', '672461686232758161');
insert into edge values ('-2433171337588004127', '-1571525241130689932');
insert into edge values ('-1571525241130689932', '1148398096561922871');
insert into edge values ('-2433171337588004127', '-4159305149793763536');
insert into edge values ('6659475544466198818', '845593323537647973');
insert into edge values ('-2433171337588004127', '-977612751900315097');
insert into nodelabels values ('-2433171337588004127', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('-2433171337588004127', 'startTime', '0');
insert into nodelabels values ('-2433171337588004127', 'status.code', '0');
insert into nodelabels values ('-2433171337588004127', 'serviceName', 'users');
insert into nodelabels values ('6659475544466198818', 'operationName', 'HTTP GET');
insert into nodelabels values ('6659475544466198818', 'startTime', '1');
insert into nodelabels values ('6659475544466198818', 'status.code', '1');
insert into nodelabels values ('6659475544466198818', 'serviceName', 'users');
insert into nodelabels values ('845593323537647973', 'operationName', '/bookings/<username>');
insert into nodelabels values ('845593323537647973', 'startTime', '2');
insert into nodelabels values ('845593323537647973', 'status.code', '1');
insert into nodelabels values ('845593323537647973', 'serviceName', 'bookings-primary');
insert into nodelabels values ('-977612751900315097', 'operationName', 'HTTP GET');
insert into nodelabels values ('-977612751900315097', 'startTime', '5');
insert into nodelabels values ('-977612751900315097', 'status.code', '0');
insert into nodelabels values ('-977612751900315097', 'serviceName', 'users');
insert into nodelabels values ('7726427157566928879', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('7726427157566928879', 'startTime', '6');
insert into nodelabels values ('7726427157566928879', 'status.code', '0');
insert into nodelabels values ('7726427157566928879', 'serviceName', 'movies');
insert into nodelabels values ('-4159305149793763536', 'operationName', 'HTTP GET');
insert into nodelabels values ('-4159305149793763536', 'startTime', '3');
insert into nodelabels values ('-4159305149793763536', 'status.code', '0');
insert into nodelabels values ('-4159305149793763536', 'serviceName', 'users');
insert into nodelabels values ('672461686232758161', 'operationName', '/bookings/<username>');
insert into nodelabels values ('672461686232758161', 'startTime', '4');
insert into nodelabels values ('672461686232758161', 'status.code', '0');
insert into nodelabels values ('672461686232758161', 'serviceName', 'bookings-secondary');
insert into nodelabels values ('-1571525241130689932', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1571525241130689932', 'startTime', '7');
insert into nodelabels values ('-1571525241130689932', 'status.code', '0');
insert into nodelabels values ('-1571525241130689932', 'serviceName', 'users');
insert into nodelabels values ('1148398096561922871', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('1148398096561922871', 'startTime', '8');
insert into nodelabels values ('1148398096561922871', 'status.code', '0');
insert into nodelabels values ('1148398096561922871', 'serviceName', 'movies');

