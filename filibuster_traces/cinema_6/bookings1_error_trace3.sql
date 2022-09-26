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
                insert into edge values('-1308330447244042043', '-4329275378252171361');
insert into edge values('-1308330447244042043', '-4520413448663688184');
insert into edge values('-1308330447244042043', '8918717562771220440');
insert into edge values('-4329275378252171361', '5717662065600180943');
insert into edge values('-1308330447244042043', '-4403983148985723642');
insert into edge values('8918717562771220440', '4219208484729346083');
insert into edge values('-4403983148985723642', '-6472933834443642772');
insert into edge values('-4520413448663688184', '757280579735959473');
insert into nodelabels values ('4219208484729346083', 'operationName', '/bookings/<username>');
insert into nodelabels values ('4219208484729346083', 'startTime', '4');
insert into nodelabels values ('4219208484729346083', 'status.code', '0');
insert into nodelabels values ('4219208484729346083', 'serviceName', 'bookings-secondary');
insert into nodelabels values ('-1308330447244042043', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('-1308330447244042043', 'startTime', '0');
insert into nodelabels values ('-1308330447244042043', 'status.code', '0');
insert into nodelabels values ('-1308330447244042043', 'serviceName', 'users');
insert into nodelabels values ('-4403983148985723642', 'operationName', 'HTTP GET');
insert into nodelabels values ('-4403983148985723642', 'startTime', '7');
insert into nodelabels values ('-4403983148985723642', 'status.code', '0');
insert into nodelabels values ('-4403983148985723642', 'serviceName', 'users');
insert into nodelabels values ('-4520413448663688184', 'operationName', 'HTTP GET');
insert into nodelabels values ('-4520413448663688184', 'startTime', '5');
insert into nodelabels values ('-4520413448663688184', 'status.code', '0');
insert into nodelabels values ('-4520413448663688184', 'serviceName', 'users');
insert into nodelabels values ('-6472933834443642772', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('-6472933834443642772', 'startTime', '8');
insert into nodelabels values ('-6472933834443642772', 'status.code', '0');
insert into nodelabels values ('-6472933834443642772', 'serviceName', 'movies');
insert into nodelabels values ('5717662065600180943', 'operationName', '/bookings/<username>');
insert into nodelabels values ('5717662065600180943', 'startTime', '2');
insert into nodelabels values ('5717662065600180943', 'status.code', '1');
insert into nodelabels values ('5717662065600180943', 'serviceName', 'bookings-primary');
insert into nodelabels values ('757280579735959473', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('757280579735959473', 'startTime', '6');
insert into nodelabels values ('757280579735959473', 'status.code', '0');
insert into nodelabels values ('757280579735959473', 'serviceName', 'movies');
insert into nodelabels values ('8918717562771220440', 'operationName', 'HTTP GET');
insert into nodelabels values ('8918717562771220440', 'startTime', '3');
insert into nodelabels values ('8918717562771220440', 'status.code', '0');
insert into nodelabels values ('8918717562771220440', 'serviceName', 'users');
insert into nodelabels values ('-4329275378252171361', 'operationName', 'HTTP GET');
insert into nodelabels values ('-4329275378252171361', 'startTime', '1');
insert into nodelabels values ('-4329275378252171361', 'status.code', '1');
insert into nodelabels values ('-4329275378252171361', 'serviceName', 'users');

