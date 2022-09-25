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
                insert into edge values('-6052936775849067281', '413493799671320834');
insert into edge values('-7406241164783336710', '8688571962828939347');
insert into edge values('-519984296070264515', '-6052936775849067281');
insert into edge values('-6052936775849067281', '7872282980039660344');
insert into edge values('1815475285092783002', '-519984296070264515');
insert into edge values('-6052936775849067281', '-1526343807062038122');
insert into edge values('-6052936775849067281', '-7406241164783336710');
insert into edge values('-1526343807062038122', '-6798112252218040819');
insert into edge values('-6052936775849067281', '3075109766487016908');
insert into edge values('1687332438328322761', '-7259089577210317141');
insert into edge values('7872282980039660344', '1343965531893050552');
insert into edge values('-6052936775849067281', '1687332438328322761');
insert into edge values('3075109766487016908', '2203828151688999137');
insert into nodelabels values ('2203828151688999137', 'operationName', '/users/<user_id>');
insert into nodelabels values ('2203828151688999137', 'startTime', '4');
insert into nodelabels values ('2203828151688999137', 'status.code', '0');
insert into nodelabels values ('2203828151688999137', 'serviceName', 'user-profile');
insert into nodelabels values ('413493799671320834', 'operationName', 'HTTP GET');
insert into nodelabels values ('413493799671320834', 'startTime', '9');
insert into nodelabels values ('413493799671320834', 'status.code', '1');
insert into nodelabels values ('413493799671320834', 'serviceName', 'api-gateway');
insert into nodelabels values ('1687332438328322761', 'operationName', 'HTTP GET');
insert into nodelabels values ('1687332438328322761', 'startTime', '5');
insert into nodelabels values ('1687332438328322761', 'status.code', '0');
insert into nodelabels values ('1687332438328322761', 'serviceName', 'api-gateway');
insert into nodelabels values ('-7259089577210317141', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-7259089577210317141', 'startTime', '6');
insert into nodelabels values ('-7259089577210317141', 'status.code', '0');
insert into nodelabels values ('-7259089577210317141', 'serviceName', 'bookmarks');
insert into nodelabels values ('3075109766487016908', 'operationName', 'HTTP GET');
insert into nodelabels values ('3075109766487016908', 'startTime', '3');
insert into nodelabels values ('3075109766487016908', 'status.code', '0');
insert into nodelabels values ('3075109766487016908', 'serviceName', 'api-gateway');
insert into nodelabels values ('-6798112252218040819', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-6798112252218040819', 'startTime', '13');
insert into nodelabels values ('-6798112252218040819', 'status.code', '0');
insert into nodelabels values ('-6798112252218040819', 'serviceName', 'ratings');
insert into nodelabels values ('-6052936775849067281', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('-6052936775849067281', 'startTime', '2');
insert into nodelabels values ('-6052936775849067281', 'status.code', '0');
insert into nodelabels values ('-6052936775849067281', 'serviceName', 'api-gateway');
insert into nodelabels values ('8688571962828939347', 'operationName', '/users/<user_id>');
insert into nodelabels values ('8688571962828939347', 'startTime', '8');
insert into nodelabels values ('8688571962828939347', 'status.code', '0');
insert into nodelabels values ('8688571962828939347', 'serviceName', 'my-list');
insert into nodelabels values ('-1526343807062038122', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1526343807062038122', 'startTime', '12');
insert into nodelabels values ('-1526343807062038122', 'status.code', '0');
insert into nodelabels values ('-1526343807062038122', 'serviceName', 'api-gateway');
insert into nodelabels values ('7872282980039660344', 'operationName', 'HTTP GET');
insert into nodelabels values ('7872282980039660344', 'startTime', '10');
insert into nodelabels values ('7872282980039660344', 'status.code', '0');
insert into nodelabels values ('7872282980039660344', 'serviceName', 'api-gateway');
insert into nodelabels values ('-7406241164783336710', 'operationName', 'HTTP GET');
insert into nodelabels values ('-7406241164783336710', 'startTime', '7');
insert into nodelabels values ('-7406241164783336710', 'status.code', '0');
insert into nodelabels values ('-7406241164783336710', 'serviceName', 'api-gateway');
insert into nodelabels values ('-519984296070264515', 'operationName', 'HTTP GET');
insert into nodelabels values ('-519984296070264515', 'startTime', '1');
insert into nodelabels values ('-519984296070264515', 'status.code', '0');
insert into nodelabels values ('-519984296070264515', 'serviceName', 'mobile-client');
insert into nodelabels values ('1343965531893050552', 'operationName', '/');
insert into nodelabels values ('1343965531893050552', 'startTime', '11');
insert into nodelabels values ('1343965531893050552', 'status.code', '0');
insert into nodelabels values ('1343965531893050552', 'serviceName', 'global-recommendations');
insert into nodelabels values ('1815475285092783002', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('1815475285092783002', 'startTime', '0');
insert into nodelabels values ('1815475285092783002', 'status.code', '0');
insert into nodelabels values ('1815475285092783002', 'serviceName', 'mobile-client');

