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
                insert into edge values ('5553548059312015318', '7601875974502544386');
insert into edge values ('5553548059312015318', '-1276443311138268702');
insert into edge values ('-1276443311138268702', '3047462615792040386');
insert into edge values ('5553548059312015318', '3786647682169715655');
insert into edge values ('7601875974502544386', '-3938047496965593466');
insert into nodelabels values ('-1276443311138268702', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1276443311138268702', 'startTime', '2');
insert into nodelabels values ('-1276443311138268702', 'status.code', '0');
insert into nodelabels values ('-1276443311138268702', 'serviceName', 'users');
insert into nodelabels values ('7601875974502544386', 'operationName', 'HTTP GET');
insert into nodelabels values ('7601875974502544386', 'startTime', '4');
insert into nodelabels values ('7601875974502544386', 'status.code', '0');
insert into nodelabels values ('7601875974502544386', 'serviceName', 'users');
insert into nodelabels values ('3047462615792040386', 'operationName', '/bookings/<username>');
insert into nodelabels values ('3047462615792040386', 'startTime', '3');
insert into nodelabels values ('3047462615792040386', 'status.code', '0');
insert into nodelabels values ('3047462615792040386', 'serviceName', 'bookings-secondary');
insert into nodelabels values ('-3938047496965593466', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('-3938047496965593466', 'startTime', '5');
insert into nodelabels values ('-3938047496965593466', 'status.code', '0');
insert into nodelabels values ('-3938047496965593466', 'serviceName', 'movies');
insert into nodelabels values ('3786647682169715655', 'operationName', 'HTTP GET');
insert into nodelabels values ('3786647682169715655', 'startTime', '1');
insert into nodelabels values ('3786647682169715655', 'status.code', '1');
insert into nodelabels values ('3786647682169715655', 'serviceName', 'users');
insert into nodelabels values ('5553548059312015318', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('5553548059312015318', 'startTime', '0');
insert into nodelabels values ('5553548059312015318', 'status.code', '0');
insert into nodelabels values ('5553548059312015318', 'serviceName', 'users');

