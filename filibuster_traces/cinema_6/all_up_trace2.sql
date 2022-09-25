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
                insert into edge values ('5102960301690438169', '7957927822153426898');
insert into edge values ('547942728000836629', '-2092537070812696015');
insert into edge values ('547942728000836629', '5102960301690438169');
insert into edge values ('-5458790531748026726', '-2563655943867325064');
insert into edge values ('-2092537070812696015', '3270540343153732341');
insert into edge values ('547942728000836629', '-5458790531748026726');
insert into edge values ('-7553017737898427282', '-5806555413553484982');
insert into edge values ('547942728000836629', '-7553017737898427282');
insert into edge values ('5872820083009055944', '-7697702397143279609');
insert into edge values ('547942728000836629', '5872820083009055944');
insert into nodelabels values ('-7697702397143279609', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('-7697702397143279609', 'startTime', '6');
insert into nodelabels values ('-7697702397143279609', 'status.code', '0');
insert into nodelabels values ('-7697702397143279609', 'serviceName', 'movies');
insert into nodelabels values ('5872820083009055944', 'operationName', 'HTTP GET');
insert into nodelabels values ('5872820083009055944', 'startTime', '5');
insert into nodelabels values ('5872820083009055944', 'status.code', '0');
insert into nodelabels values ('5872820083009055944', 'serviceName', 'users');
insert into nodelabels values ('-5806555413553484982', 'operationName', '/bookings/<username>');
insert into nodelabels values ('-5806555413553484982', 'startTime', '2');
insert into nodelabels values ('-5806555413553484982', 'status.code', '0');
insert into nodelabels values ('-5806555413553484982', 'serviceName', 'bookings-primary');
insert into nodelabels values ('-7553017737898427282', 'operationName', 'HTTP GET');
insert into nodelabels values ('-7553017737898427282', 'startTime', '1');
insert into nodelabels values ('-7553017737898427282', 'status.code', '0');
insert into nodelabels values ('-7553017737898427282', 'serviceName', 'users');
insert into nodelabels values ('-2092537070812696015', 'operationName', 'HTTP GET');
insert into nodelabels values ('-2092537070812696015', 'startTime', '9');
insert into nodelabels values ('-2092537070812696015', 'status.code', '0');
insert into nodelabels values ('-2092537070812696015', 'serviceName', 'users');
insert into nodelabels values ('7957927822153426898', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('7957927822153426898', 'startTime', '4');
insert into nodelabels values ('7957927822153426898', 'status.code', '0');
insert into nodelabels values ('7957927822153426898', 'serviceName', 'movies');
insert into nodelabels values ('547942728000836629', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('547942728000836629', 'startTime', '0');
insert into nodelabels values ('547942728000836629', 'status.code', '0');
insert into nodelabels values ('547942728000836629', 'serviceName', 'users');
insert into nodelabels values ('3270540343153732341', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('3270540343153732341', 'startTime', '10');
insert into nodelabels values ('3270540343153732341', 'status.code', '0');
insert into nodelabels values ('3270540343153732341', 'serviceName', 'movies');
insert into nodelabels values ('-2563655943867325064', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('-2563655943867325064', 'startTime', '8');
insert into nodelabels values ('-2563655943867325064', 'status.code', '0');
insert into nodelabels values ('-2563655943867325064', 'serviceName', 'movies');
insert into nodelabels values ('5102960301690438169', 'operationName', 'HTTP GET');
insert into nodelabels values ('5102960301690438169', 'startTime', '3');
insert into nodelabels values ('5102960301690438169', 'status.code', '0');
insert into nodelabels values ('5102960301690438169', 'serviceName', 'users');
insert into nodelabels values ('-5458790531748026726', 'operationName', 'HTTP GET');
insert into nodelabels values ('-5458790531748026726', 'startTime', '7');
insert into nodelabels values ('-5458790531748026726', 'status.code', '0');
insert into nodelabels values ('-5458790531748026726', 'serviceName', 'users');

