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
                insert into edge values ('-6049573462028153520', '7630462728366840700');
insert into edge values ('-6049573462028153520', '-2491018967868456987');
insert into edge values ('-6049573462028153520', '1414186423801739905');
insert into edge values ('-6938379483757312248', '8721263998344656143');
insert into edge values ('-6049573462028153520', '-6938379483757312248');
insert into edge values ('1414186423801739905', '9033986600454628833');
insert into edge values ('-2491018967868456987', '8056535087706814913');
insert into nodelabels values ('1414186423801739905', 'operationName', 'HTTP GET');
insert into nodelabels values ('1414186423801739905', 'startTime', '4');
insert into nodelabels values ('1414186423801739905', 'status.code', '0');
insert into nodelabels values ('1414186423801739905', 'serviceName', 'users');
insert into nodelabels values ('9033986600454628833', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('9033986600454628833', 'startTime', '5');
insert into nodelabels values ('9033986600454628833', 'status.code', '0');
insert into nodelabels values ('9033986600454628833', 'serviceName', 'movies');
insert into nodelabels values ('8056535087706814913', 'operationName', '/bookings/<username>');
insert into nodelabels values ('8056535087706814913', 'startTime', '3');
insert into nodelabels values ('8056535087706814913', 'status.code', '0');
insert into nodelabels values ('8056535087706814913', 'serviceName', 'bookings-secondary');
insert into nodelabels values ('-2491018967868456987', 'operationName', 'HTTP GET');
insert into nodelabels values ('-2491018967868456987', 'startTime', '2');
insert into nodelabels values ('-2491018967868456987', 'status.code', '0');
insert into nodelabels values ('-2491018967868456987', 'serviceName', 'users');
insert into nodelabels values ('-6938379483757312248', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6938379483757312248', 'startTime', '6');
insert into nodelabels values ('-6938379483757312248', 'status.code', '0');
insert into nodelabels values ('-6938379483757312248', 'serviceName', 'users');
insert into nodelabels values ('8721263998344656143', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('8721263998344656143', 'startTime', '7');
insert into nodelabels values ('8721263998344656143', 'status.code', '0');
insert into nodelabels values ('8721263998344656143', 'serviceName', 'movies');
insert into nodelabels values ('-6049573462028153520', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('-6049573462028153520', 'startTime', '0');
insert into nodelabels values ('-6049573462028153520', 'status.code', '0');
insert into nodelabels values ('-6049573462028153520', 'serviceName', 'users');
insert into nodelabels values ('7630462728366840700', 'operationName', 'HTTP GET');
insert into nodelabels values ('7630462728366840700', 'startTime', '1');
insert into nodelabels values ('7630462728366840700', 'status.code', '1');
insert into nodelabels values ('7630462728366840700', 'serviceName', 'users');

