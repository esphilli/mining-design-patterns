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
                insert into edge values('3045855417409729738', '-366713992169213819');
insert into edge values('3045855417409729738', '2840482767676459711');
insert into edge values('8359906366345427729', '-5170992072622072631');
insert into edge values('2840482767676459711', '-8848685186466379322');
insert into edge values('-366713992169213819', '-2635217039132326605');
insert into edge values('3045855417409729738', '7092384884540958685');
insert into edge values('3045855417409729738', '119994475635838206');
insert into edge values('119994475635838206', '7053733406431943237');
insert into edge values('7092384884540958685', '-4947534615731268134');
insert into edge values('3045855417409729738', '8359906366345427729');
insert into nodelabels values ('-366713992169213819', 'operationName', 'HTTP GET');
insert into nodelabels values ('-366713992169213819', 'startTime', '5');
insert into nodelabels values ('-366713992169213819', 'status.code', '0');
insert into nodelabels values ('-366713992169213819', 'serviceName', 'users');
insert into nodelabels values ('-8848685186466379322', 'operationName', '/bookings/<username>');
insert into nodelabels values ('-8848685186466379322', 'startTime', '2');
insert into nodelabels values ('-8848685186466379322', 'status.code', '0');
insert into nodelabels values ('-8848685186466379322', 'serviceName', 'bookings-primary');
insert into nodelabels values ('7053733406431943237', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('7053733406431943237', 'startTime', '8');
insert into nodelabels values ('7053733406431943237', 'status.code', '0');
insert into nodelabels values ('7053733406431943237', 'serviceName', 'movies');
insert into nodelabels values ('-5170992072622072631', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('-5170992072622072631', 'startTime', '10');
insert into nodelabels values ('-5170992072622072631', 'status.code', '0');
insert into nodelabels values ('-5170992072622072631', 'serviceName', 'movies');
insert into nodelabels values ('3045855417409729738', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('3045855417409729738', 'startTime', '0');
insert into nodelabels values ('3045855417409729738', 'status.code', '0');
insert into nodelabels values ('3045855417409729738', 'serviceName', 'users');
insert into nodelabels values ('8359906366345427729', 'operationName', 'HTTP GET');
insert into nodelabels values ('8359906366345427729', 'startTime', '9');
insert into nodelabels values ('8359906366345427729', 'status.code', '0');
insert into nodelabels values ('8359906366345427729', 'serviceName', 'users');
insert into nodelabels values ('-2635217039132326605', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('-2635217039132326605', 'startTime', '6');
insert into nodelabels values ('-2635217039132326605', 'status.code', '0');
insert into nodelabels values ('-2635217039132326605', 'serviceName', 'movies');
insert into nodelabels values ('-4947534615731268134', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('-4947534615731268134', 'startTime', '4');
insert into nodelabels values ('-4947534615731268134', 'status.code', '0');
insert into nodelabels values ('-4947534615731268134', 'serviceName', 'movies');
insert into nodelabels values ('7092384884540958685', 'operationName', 'HTTP GET');
insert into nodelabels values ('7092384884540958685', 'startTime', '3');
insert into nodelabels values ('7092384884540958685', 'status.code', '0');
insert into nodelabels values ('7092384884540958685', 'serviceName', 'users');
insert into nodelabels values ('119994475635838206', 'operationName', 'HTTP GET');
insert into nodelabels values ('119994475635838206', 'startTime', '7');
insert into nodelabels values ('119994475635838206', 'status.code', '0');
insert into nodelabels values ('119994475635838206', 'serviceName', 'users');
insert into nodelabels values ('2840482767676459711', 'operationName', 'HTTP GET');
insert into nodelabels values ('2840482767676459711', 'startTime', '1');
insert into nodelabels values ('2840482767676459711', 'status.code', '0');
insert into nodelabels values ('2840482767676459711', 'serviceName', 'users');

