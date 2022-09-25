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
                insert into edge values('6726433328922824018', '8858659575627351679');
insert into edge values('-1245241046883153173', '6726433328922824018');
insert into edge values('5564572194235032963', '7585188849578179612');
insert into edge values('4781716103451232627', '-1688913842017688081');
insert into edge values('-5142211246785053912', '6533144506361380731');
insert into edge values('1207083527247984631', '4612034678862483594');
insert into edge values('-1245241046883153173', '-5142211246785053912');
insert into edge values('-1245241046883153173', '5564572194235032963');
insert into edge values('-1245241046883153173', '-6220563868332325438');
insert into edge values('-1245241046883153173', '4781716103451232627');
insert into edge values('4612034678862483594', '-1245241046883153173');
insert into edge values('-6220563868332325438', '-8518959951169760187');
insert into nodelabels values ('-6220563868332325438', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6220563868332325438', 'startTime', '9');
insert into nodelabels values ('-6220563868332325438', 'status.code', '0');
insert into nodelabels values ('-6220563868332325438', 'serviceName', 'api-gateway');
insert into nodelabels values ('5564572194235032963', 'operationName', 'HTTP GET');
insert into nodelabels values ('5564572194235032963', 'startTime', '7');
insert into nodelabels values ('5564572194235032963', 'status.code', '0');
insert into nodelabels values ('5564572194235032963', 'serviceName', 'api-gateway');
insert into nodelabels values ('-8518959951169760187', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-8518959951169760187', 'startTime', '10');
insert into nodelabels values ('-8518959951169760187', 'status.code', '0');
insert into nodelabels values ('-8518959951169760187', 'serviceName', 'user-recommendations');
insert into nodelabels values ('-5142211246785053912', 'operationName', 'HTTP GET');
insert into nodelabels values ('-5142211246785053912', 'startTime', '3');
insert into nodelabels values ('-5142211246785053912', 'status.code', '0');
insert into nodelabels values ('-5142211246785053912', 'serviceName', 'api-gateway');
insert into nodelabels values ('4612034678862483594', 'operationName', 'HTTP GET');
insert into nodelabels values ('4612034678862483594', 'startTime', '1');
insert into nodelabels values ('4612034678862483594', 'status.code', '0');
insert into nodelabels values ('4612034678862483594', 'serviceName', 'mobile-client');
insert into nodelabels values ('-1245241046883153173', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('-1245241046883153173', 'startTime', '2');
insert into nodelabels values ('-1245241046883153173', 'status.code', '0');
insert into nodelabels values ('-1245241046883153173', 'serviceName', 'api-gateway');
insert into nodelabels values ('-1688913842017688081', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-1688913842017688081', 'startTime', '6');
insert into nodelabels values ('-1688913842017688081', 'status.code', '0');
insert into nodelabels values ('-1688913842017688081', 'serviceName', 'bookmarks');
insert into nodelabels values ('6726433328922824018', 'operationName', 'HTTP GET');
insert into nodelabels values ('6726433328922824018', 'startTime', '11');
insert into nodelabels values ('6726433328922824018', 'status.code', '0');
insert into nodelabels values ('6726433328922824018', 'serviceName', 'api-gateway');
insert into nodelabels values ('4781716103451232627', 'operationName', 'HTTP GET');
insert into nodelabels values ('4781716103451232627', 'startTime', '5');
insert into nodelabels values ('4781716103451232627', 'status.code', '0');
insert into nodelabels values ('4781716103451232627', 'serviceName', 'api-gateway');
insert into nodelabels values ('1207083527247984631', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('1207083527247984631', 'startTime', '0');
insert into nodelabels values ('1207083527247984631', 'status.code', '0');
insert into nodelabels values ('1207083527247984631', 'serviceName', 'mobile-client');
insert into nodelabels values ('6533144506361380731', 'operationName', '/users/<user_id>');
insert into nodelabels values ('6533144506361380731', 'startTime', '4');
insert into nodelabels values ('6533144506361380731', 'status.code', '0');
insert into nodelabels values ('6533144506361380731', 'serviceName', 'user-profile');
insert into nodelabels values ('7585188849578179612', 'operationName', '/users/<user_id>');
insert into nodelabels values ('7585188849578179612', 'startTime', '8');
insert into nodelabels values ('7585188849578179612', 'status.code', '0');
insert into nodelabels values ('7585188849578179612', 'serviceName', 'my-list');
insert into nodelabels values ('8858659575627351679', 'operationName', '/users/<user_id>');
insert into nodelabels values ('8858659575627351679', 'startTime', '12');
insert into nodelabels values ('8858659575627351679', 'status.code', '0');
insert into nodelabels values ('8858659575627351679', 'serviceName', 'ratings');

