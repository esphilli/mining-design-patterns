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
                insert into edge values('-8357781026281078024', '-1892686633425985419');
insert into edge values('4706254729068251201', '1889019279283792596');
insert into edge values('4706254729068251201', '-8357781026281078024');
insert into edge values('4706254729068251201', '-1944346519503266914');
insert into edge values('-1944346519503266914', '-2835589720758638388');
insert into edge values('4706254729068251201', '121722723294876729');
insert into edge values('-1644292099745709161', '-2153414913979031594');
insert into edge values('-4893480111706155452', '3652883523418904266');
insert into edge values('4706254729068251201', '-1644292099745709161');
insert into edge values('1889019279283792596', '8163812173247830465');
insert into edge values('3652883523418904266', '4706254729068251201');
insert into edge values('121722723294876729', '-6051750003300479953');
insert into nodelabels values ('4706254729068251201', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('4706254729068251201', 'startTime', '2');
insert into nodelabels values ('4706254729068251201', 'status.code', '0');
insert into nodelabels values ('4706254729068251201', 'serviceName', 'api-gateway');
insert into nodelabels values ('8163812173247830465', 'operationName', '/users/<user_id>');
insert into nodelabels values ('8163812173247830465', 'startTime', '4');
insert into nodelabels values ('8163812173247830465', 'status.code', '0');
insert into nodelabels values ('8163812173247830465', 'serviceName', 'user-profile');
insert into nodelabels values ('-4893480111706155452', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('-4893480111706155452', 'startTime', '0');
insert into nodelabels values ('-4893480111706155452', 'status.code', '0');
insert into nodelabels values ('-4893480111706155452', 'serviceName', 'mobile-client');
insert into nodelabels values ('3652883523418904266', 'operationName', 'HTTP GET');
insert into nodelabels values ('3652883523418904266', 'startTime', '1');
insert into nodelabels values ('3652883523418904266', 'status.code', '0');
insert into nodelabels values ('3652883523418904266', 'serviceName', 'mobile-client');
insert into nodelabels values ('-2835589720758638388', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-2835589720758638388', 'startTime', '12');
insert into nodelabels values ('-2835589720758638388', 'status.code', '0');
insert into nodelabels values ('-2835589720758638388', 'serviceName', 'ratings');
insert into nodelabels values ('-6051750003300479953', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-6051750003300479953', 'startTime', '6');
insert into nodelabels values ('-6051750003300479953', 'status.code', '0');
insert into nodelabels values ('-6051750003300479953', 'serviceName', 'bookmarks');
insert into nodelabels values ('1889019279283792596', 'operationName', 'HTTP GET');
insert into nodelabels values ('1889019279283792596', 'startTime', '3');
insert into nodelabels values ('1889019279283792596', 'status.code', '0');
insert into nodelabels values ('1889019279283792596', 'serviceName', 'api-gateway');
insert into nodelabels values ('-1892686633425985419', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-1892686633425985419', 'startTime', '8');
insert into nodelabels values ('-1892686633425985419', 'status.code', '0');
insert into nodelabels values ('-1892686633425985419', 'serviceName', 'my-list');
insert into nodelabels values ('-2153414913979031594', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-2153414913979031594', 'startTime', '10');
insert into nodelabels values ('-2153414913979031594', 'status.code', '0');
insert into nodelabels values ('-2153414913979031594', 'serviceName', 'user-recommendations');
insert into nodelabels values ('-1644292099745709161', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1644292099745709161', 'startTime', '9');
insert into nodelabels values ('-1644292099745709161', 'status.code', '0');
insert into nodelabels values ('-1644292099745709161', 'serviceName', 'api-gateway');
insert into nodelabels values ('-8357781026281078024', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8357781026281078024', 'startTime', '7');
insert into nodelabels values ('-8357781026281078024', 'status.code', '0');
insert into nodelabels values ('-8357781026281078024', 'serviceName', 'api-gateway');
insert into nodelabels values ('121722723294876729', 'operationName', 'HTTP GET');
insert into nodelabels values ('121722723294876729', 'startTime', '5');
insert into nodelabels values ('121722723294876729', 'status.code', '0');
insert into nodelabels values ('121722723294876729', 'serviceName', 'api-gateway');
insert into nodelabels values ('-1944346519503266914', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1944346519503266914', 'startTime', '11');
insert into nodelabels values ('-1944346519503266914', 'status.code', '0');
insert into nodelabels values ('-1944346519503266914', 'serviceName', 'api-gateway');

