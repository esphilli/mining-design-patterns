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
                insert into edge values('8731323337259087012', '-6113682115385141794');
insert into edge values('6072155904444965356', '-5082344090574566428');
insert into edge values('-4101940187463912349', '8731323337259087012');
insert into edge values('6351307784522513410', '-2698575401992067827');
insert into edge values('-6113682115385141794', '2734439163967177888');
insert into edge values('-6113682115385141794', '6072155904444965356');
insert into edge values('-6113682115385141794', '6351307784522513410');
insert into edge values('-6113682115385141794', '9109421299721090366');
insert into edge values('-6113682115385141794', '-1047610481027038015');
insert into edge values('2734439163967177888', '-4474049716419761813');
insert into edge values('9109421299721090366', '182807272676897689');
insert into edge values('-1047610481027038015', '7602222786831372');
insert into nodelabels values ('2734439163967177888', 'operationName', 'HTTP GET');
insert into nodelabels values ('2734439163967177888', 'startTime', '7');
insert into nodelabels values ('2734439163967177888', 'status.code', '0');
insert into nodelabels values ('2734439163967177888', 'serviceName', 'api-gateway');
insert into nodelabels values ('9109421299721090366', 'operationName', 'HTTP GET');
insert into nodelabels values ('9109421299721090366', 'startTime', '3');
insert into nodelabels values ('9109421299721090366', 'status.code', '0');
insert into nodelabels values ('9109421299721090366', 'serviceName', 'api-gateway');
insert into nodelabels values ('6351307784522513410', 'operationName', 'HTTP GET');
insert into nodelabels values ('6351307784522513410', 'startTime', '5');
insert into nodelabels values ('6351307784522513410', 'status.code', '0');
insert into nodelabels values ('6351307784522513410', 'serviceName', 'api-gateway');
insert into nodelabels values ('-4101940187463912349', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('-4101940187463912349', 'startTime', '0');
insert into nodelabels values ('-4101940187463912349', 'status.code', '0');
insert into nodelabels values ('-4101940187463912349', 'serviceName', 'mobile-client');
insert into nodelabels values ('8731323337259087012', 'operationName', 'HTTP GET');
insert into nodelabels values ('8731323337259087012', 'startTime', '1');
insert into nodelabels values ('8731323337259087012', 'status.code', '0');
insert into nodelabels values ('8731323337259087012', 'serviceName', 'mobile-client');
insert into nodelabels values ('-5082344090574566428', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-5082344090574566428', 'startTime', '10');
insert into nodelabels values ('-5082344090574566428', 'status.code', '0');
insert into nodelabels values ('-5082344090574566428', 'serviceName', 'user-recommendations');
insert into nodelabels values ('-1047610481027038015', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1047610481027038015', 'startTime', '11');
insert into nodelabels values ('-1047610481027038015', 'status.code', '0');
insert into nodelabels values ('-1047610481027038015', 'serviceName', 'api-gateway');
insert into nodelabels values ('-4474049716419761813', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-4474049716419761813', 'startTime', '8');
insert into nodelabels values ('-4474049716419761813', 'status.code', '0');
insert into nodelabels values ('-4474049716419761813', 'serviceName', 'my-list');
insert into nodelabels values ('6072155904444965356', 'operationName', 'HTTP GET');
insert into nodelabels values ('6072155904444965356', 'startTime', '9');
insert into nodelabels values ('6072155904444965356', 'status.code', '0');
insert into nodelabels values ('6072155904444965356', 'serviceName', 'api-gateway');
insert into nodelabels values ('-2698575401992067827', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-2698575401992067827', 'startTime', '6');
insert into nodelabels values ('-2698575401992067827', 'status.code', '0');
insert into nodelabels values ('-2698575401992067827', 'serviceName', 'bookmarks');
insert into nodelabels values ('7602222786831372', 'operationName', '/users/<user_id>');
insert into nodelabels values ('7602222786831372', 'startTime', '12');
insert into nodelabels values ('7602222786831372', 'status.code', '0');
insert into nodelabels values ('7602222786831372', 'serviceName', 'ratings');
insert into nodelabels values ('182807272676897689', 'operationName', '/users/<user_id>');
insert into nodelabels values ('182807272676897689', 'startTime', '4');
insert into nodelabels values ('182807272676897689', 'status.code', '0');
insert into nodelabels values ('182807272676897689', 'serviceName', 'user-profile');
insert into nodelabels values ('-6113682115385141794', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('-6113682115385141794', 'startTime', '2');
insert into nodelabels values ('-6113682115385141794', 'status.code', '0');
insert into nodelabels values ('-6113682115385141794', 'serviceName', 'api-gateway');

