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
                insert into edge values('7430562175438670018', '983367673383773414');
insert into edge values('8281207014774901012', '-166730981926633987');
insert into edge values('-6584709568086082501', '-8012950631315316713');
insert into edge values('-1356668554175871781', '-1262390628729333142');
insert into edge values('-6584709568086082501', '8281207014774901012');
insert into edge values('-6584709568086082501', '-6843030692187553482');
insert into edge values('-6843030692187553482', '88537374225968894');
insert into edge values('-6584709568086082501', '-1164996296994871821');
insert into edge values('-6584709568086082501', '7430562175438670018');
insert into edge values('-6552135572813443310', '3736471293207564119');
insert into edge values('-1164996296994871821', '-4615914324157778720');
insert into edge values('-6584709568086082501', '-6552135572813443310');
insert into edge values('-8012950631315316713', '-7911364695942634703');
insert into edge values('-6598431164050495057', '-3592135399054303612');
insert into edge values('-3592135399054303612', '-6584709568086082501');
insert into edge values('-6584709568086082501', '-1356668554175871781');
insert into nodelabels values ('-4615914324157778720', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-4615914324157778720', 'startTime', '14');
insert into nodelabels values ('-4615914324157778720', 'status.code', '0');
insert into nodelabels values ('-4615914324157778720', 'serviceName', 'user-recommendations');
insert into nodelabels values ('7430562175438670018', 'operationName', 'HTTP GET');
insert into nodelabels values ('7430562175438670018', 'startTime', '5');
insert into nodelabels values ('7430562175438670018', 'status.code', '1');
insert into nodelabels values ('7430562175438670018', 'serviceName', 'api-gateway');
insert into nodelabels values ('-3592135399054303612', 'operationName', 'HTTP GET');
insert into nodelabels values ('-3592135399054303612', 'startTime', '1');
insert into nodelabels values ('-3592135399054303612', 'status.code', '0');
insert into nodelabels values ('-3592135399054303612', 'serviceName', 'mobile-client');
insert into nodelabels values ('983367673383773414', 'operationName', '/users/<user_id>');
insert into nodelabels values ('983367673383773414', 'startTime', '6');
insert into nodelabels values ('983367673383773414', 'status.code', '1');
insert into nodelabels values ('983367673383773414', 'serviceName', 'bookmarks');
insert into nodelabels values ('-1262390628729333142', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-1262390628729333142', 'startTime', '4');
insert into nodelabels values ('-1262390628729333142', 'status.code', '0');
insert into nodelabels values ('-1262390628729333142', 'serviceName', 'user-profile');
insert into nodelabels values ('-1356668554175871781', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1356668554175871781', 'startTime', '3');
insert into nodelabels values ('-1356668554175871781', 'status.code', '0');
insert into nodelabels values ('-1356668554175871781', 'serviceName', 'api-gateway');
insert into nodelabels values ('3736471293207564119', 'operationName', '/users/<user_id>');
insert into nodelabels values ('3736471293207564119', 'startTime', '16');
insert into nodelabels values ('3736471293207564119', 'status.code', '0');
insert into nodelabels values ('3736471293207564119', 'serviceName', 'ratings');
insert into nodelabels values ('-6598431164050495057', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('-6598431164050495057', 'startTime', '0');
insert into nodelabels values ('-6598431164050495057', 'status.code', '0');
insert into nodelabels values ('-6598431164050495057', 'serviceName', 'mobile-client');
insert into nodelabels values ('-7911364695942634703', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-7911364695942634703', 'startTime', '12');
insert into nodelabels values ('-7911364695942634703', 'status.code', '0');
insert into nodelabels values ('-7911364695942634703', 'serviceName', 'my-list');
insert into nodelabels values ('-6552135572813443310', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6552135572813443310', 'startTime', '15');
insert into nodelabels values ('-6552135572813443310', 'status.code', '0');
insert into nodelabels values ('-6552135572813443310', 'serviceName', 'api-gateway');
insert into nodelabels values ('-1164996296994871821', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1164996296994871821', 'startTime', '13');
insert into nodelabels values ('-1164996296994871821', 'status.code', '0');
insert into nodelabels values ('-1164996296994871821', 'serviceName', 'api-gateway');
insert into nodelabels values ('8281207014774901012', 'operationName', 'HTTP GET');
insert into nodelabels values ('8281207014774901012', 'startTime', '9');
insert into nodelabels values ('8281207014774901012', 'status.code', '0');
insert into nodelabels values ('8281207014774901012', 'serviceName', 'api-gateway');
insert into nodelabels values ('-6843030692187553482', 'operationName', 'HTTP POST');
insert into nodelabels values ('-6843030692187553482', 'startTime', '7');
insert into nodelabels values ('-6843030692187553482', 'status.code', '0');
insert into nodelabels values ('-6843030692187553482', 'serviceName', 'api-gateway');
insert into nodelabels values ('-8012950631315316713', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8012950631315316713', 'startTime', '11');
insert into nodelabels values ('-8012950631315316713', 'status.code', '0');
insert into nodelabels values ('-8012950631315316713', 'serviceName', 'api-gateway');
insert into nodelabels values ('-6584709568086082501', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('-6584709568086082501', 'startTime', '2');
insert into nodelabels values ('-6584709568086082501', 'status.code', '0');
insert into nodelabels values ('-6584709568086082501', 'serviceName', 'api-gateway');
insert into nodelabels values ('-166730981926633987', 'operationName', '/');
insert into nodelabels values ('-166730981926633987', 'startTime', '10');
insert into nodelabels values ('-166730981926633987', 'status.code', '0');
insert into nodelabels values ('-166730981926633987', 'serviceName', 'trending');
insert into nodelabels values ('88537374225968894', 'operationName', '/');
insert into nodelabels values ('88537374225968894', 'startTime', '8');
insert into nodelabels values ('88537374225968894', 'status.code', '0');
insert into nodelabels values ('88537374225968894', 'serviceName', 'telemetry');

