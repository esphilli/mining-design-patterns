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
                insert into edge values('9111416596210494360', '-5327495373140526595');
insert into edge values('-1541124346734715454', '4103437927755886308');
insert into edge values('5973315932292639363', '6290383248447924555');
insert into edge values('-6564398985173726512', '2072407830836293476');
insert into edge values('-8393325388436755182', '-3174557775831762452');
insert into edge values('3353538921118364837', '-8775545426507795253');
insert into edge values('9111416596210494360', '-8393325388436755182');
insert into edge values('9111416596210494360', '-2104778880066035467');
insert into edge values('9111416596210494360', '-6564398985173726512');
insert into edge values('-2104778880066035467', '2292080401737121695');
insert into edge values('6726276686214859256', '9111416596210494360');
insert into edge values('9111416596210494360', '-1541124346734715454');
insert into edge values('9111416596210494360', '3353538921118364837');
insert into edge values('9111416596210494360', '5973315932292639363');
insert into edge values('-5327495373140526595', '-2078392955596463165');
insert into edge values('6904431563596482966', '6726276686214859256');
insert into nodelabels values ('-1541124346734715454', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1541124346734715454', 'startTime', '15');
insert into nodelabels values ('-1541124346734715454', 'status.code', '0');
insert into nodelabels values ('-1541124346734715454', 'serviceName', 'api-gateway');
insert into nodelabels values ('5973315932292639363', 'operationName', 'HTTP POST');
insert into nodelabels values ('5973315932292639363', 'startTime', '7');
insert into nodelabels values ('5973315932292639363', 'status.code', '0');
insert into nodelabels values ('5973315932292639363', 'serviceName', 'api-gateway');
insert into nodelabels values ('4103437927755886308', 'operationName', '/users/<user_id>');
insert into nodelabels values ('4103437927755886308', 'startTime', '16');
insert into nodelabels values ('4103437927755886308', 'status.code', '0');
insert into nodelabels values ('4103437927755886308', 'serviceName', 'ratings');
insert into nodelabels values ('2072407830836293476', 'operationName', '/users/<user_id>');
insert into nodelabels values ('2072407830836293476', 'startTime', '14');
insert into nodelabels values ('2072407830836293476', 'status.code', '0');
insert into nodelabels values ('2072407830836293476', 'serviceName', 'user-recommendations');
insert into nodelabels values ('3353538921118364837', 'operationName', 'HTTP GET');
insert into nodelabels values ('3353538921118364837', 'startTime', '5');
insert into nodelabels values ('3353538921118364837', 'status.code', '1');
insert into nodelabels values ('3353538921118364837', 'serviceName', 'api-gateway');
insert into nodelabels values ('-2078392955596463165', 'operationName', '/');
insert into nodelabels values ('-2078392955596463165', 'startTime', '10');
insert into nodelabels values ('-2078392955596463165', 'status.code', '0');
insert into nodelabels values ('-2078392955596463165', 'serviceName', 'trending');
insert into nodelabels values ('6726276686214859256', 'operationName', 'HTTP GET');
insert into nodelabels values ('6726276686214859256', 'startTime', '1');
insert into nodelabels values ('6726276686214859256', 'status.code', '0');
insert into nodelabels values ('6726276686214859256', 'serviceName', 'mobile-client');
insert into nodelabels values ('6290383248447924555', 'operationName', '/');
insert into nodelabels values ('6290383248447924555', 'startTime', '8');
insert into nodelabels values ('6290383248447924555', 'status.code', '0');
insert into nodelabels values ('6290383248447924555', 'serviceName', 'telemetry');
insert into nodelabels values ('-3174557775831762452', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-3174557775831762452', 'startTime', '4');
insert into nodelabels values ('-3174557775831762452', 'status.code', '0');
insert into nodelabels values ('-3174557775831762452', 'serviceName', 'user-profile');
insert into nodelabels values ('-8775545426507795253', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-8775545426507795253', 'startTime', '6');
insert into nodelabels values ('-8775545426507795253', 'status.code', '1');
insert into nodelabels values ('-8775545426507795253', 'serviceName', 'bookmarks');
insert into nodelabels values ('-6564398985173726512', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6564398985173726512', 'startTime', '13');
insert into nodelabels values ('-6564398985173726512', 'status.code', '0');
insert into nodelabels values ('-6564398985173726512', 'serviceName', 'api-gateway');
insert into nodelabels values ('-8393325388436755182', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8393325388436755182', 'startTime', '3');
insert into nodelabels values ('-8393325388436755182', 'status.code', '0');
insert into nodelabels values ('-8393325388436755182', 'serviceName', 'api-gateway');
insert into nodelabels values ('-2104778880066035467', 'operationName', 'HTTP GET');
insert into nodelabels values ('-2104778880066035467', 'startTime', '11');
insert into nodelabels values ('-2104778880066035467', 'status.code', '0');
insert into nodelabels values ('-2104778880066035467', 'serviceName', 'api-gateway');
insert into nodelabels values ('6904431563596482966', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('6904431563596482966', 'startTime', '0');
insert into nodelabels values ('6904431563596482966', 'status.code', '0');
insert into nodelabels values ('6904431563596482966', 'serviceName', 'mobile-client');
insert into nodelabels values ('9111416596210494360', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('9111416596210494360', 'startTime', '2');
insert into nodelabels values ('9111416596210494360', 'status.code', '0');
insert into nodelabels values ('9111416596210494360', 'serviceName', 'api-gateway');
insert into nodelabels values ('-5327495373140526595', 'operationName', 'HTTP GET');
insert into nodelabels values ('-5327495373140526595', 'startTime', '9');
insert into nodelabels values ('-5327495373140526595', 'status.code', '0');
insert into nodelabels values ('-5327495373140526595', 'serviceName', 'api-gateway');
insert into nodelabels values ('2292080401737121695', 'operationName', '/users/<user_id>');
insert into nodelabels values ('2292080401737121695', 'startTime', '12');
insert into nodelabels values ('2292080401737121695', 'status.code', '0');
insert into nodelabels values ('2292080401737121695', 'serviceName', 'my-list');

