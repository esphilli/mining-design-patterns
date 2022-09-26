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
                insert into edge values('-1809180192400427848', '-5786743925580448549');
insert into edge values('7739326252963076872', '-8624095430735902781');
insert into edge values('-1809180192400427848', '7739326252963076872');
insert into edge values('5372577460133770006', '8725161889455432287');
insert into edge values('-1809180192400427848', '-7611204103572534846');
insert into edge values('-1809180192400427848', '-599272932713413688');
insert into edge values('-599272932713413688', '6841917429398459901');
insert into edge values('-1809180192400427848', '5372577460133770006');
insert into edge values('-7611204103572534846', '-911820499567004589');
insert into edge values('-5786743925580448549', '-4764900283671093286');
insert into nodelabels values ('-7611204103572534846', 'operationName', 'HTTP GET');
insert into nodelabels values ('-7611204103572534846', 'startTime', '7');
insert into nodelabels values ('-7611204103572534846', 'status.code', '0');
insert into nodelabels values ('-7611204103572534846', 'serviceName', 'users');
insert into nodelabels values ('-8624095430735902781', 'operationName', '/bookings/<username>');
insert into nodelabels values ('-8624095430735902781', 'startTime', '2');
insert into nodelabels values ('-8624095430735902781', 'status.code', '1');
insert into nodelabels values ('-8624095430735902781', 'serviceName', 'bookings-primary');
insert into nodelabels values ('7739326252963076872', 'operationName', 'HTTP GET');
insert into nodelabels values ('7739326252963076872', 'startTime', '1');
insert into nodelabels values ('7739326252963076872', 'status.code', '1');
insert into nodelabels values ('7739326252963076872', 'serviceName', 'users');
insert into nodelabels values ('-599272932713413688', 'operationName', 'HTTP GET');
insert into nodelabels values ('-599272932713413688', 'startTime', '3');
insert into nodelabels values ('-599272932713413688', 'status.code', '0');
insert into nodelabels values ('-599272932713413688', 'serviceName', 'users');
insert into nodelabels values ('-911820499567004589', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('-911820499567004589', 'startTime', '8');
insert into nodelabels values ('-911820499567004589', 'status.code', '0');
insert into nodelabels values ('-911820499567004589', 'serviceName', 'movies');
insert into nodelabels values ('5372577460133770006', 'operationName', 'HTTP GET');
insert into nodelabels values ('5372577460133770006', 'startTime', '5');
insert into nodelabels values ('5372577460133770006', 'status.code', '0');
insert into nodelabels values ('5372577460133770006', 'serviceName', 'users');
insert into nodelabels values ('-1809180192400427848', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('-1809180192400427848', 'startTime', '0');
insert into nodelabels values ('-1809180192400427848', 'status.code', '0');
insert into nodelabels values ('-1809180192400427848', 'serviceName', 'users');
insert into nodelabels values ('-4764900283671093286', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('-4764900283671093286', 'startTime', '10');
insert into nodelabels values ('-4764900283671093286', 'status.code', '0');
insert into nodelabels values ('-4764900283671093286', 'serviceName', 'movies');
insert into nodelabels values ('-5786743925580448549', 'operationName', 'HTTP GET');
insert into nodelabels values ('-5786743925580448549', 'startTime', '9');
insert into nodelabels values ('-5786743925580448549', 'status.code', '0');
insert into nodelabels values ('-5786743925580448549', 'serviceName', 'users');
insert into nodelabels values ('6841917429398459901', 'operationName', '/bookings/<username>');
insert into nodelabels values ('6841917429398459901', 'startTime', '4');
insert into nodelabels values ('6841917429398459901', 'status.code', '0');
insert into nodelabels values ('6841917429398459901', 'serviceName', 'bookings-secondary');
insert into nodelabels values ('8725161889455432287', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('8725161889455432287', 'startTime', '6');
insert into nodelabels values ('8725161889455432287', 'status.code', '0');
insert into nodelabels values ('8725161889455432287', 'serviceName', 'movies');

