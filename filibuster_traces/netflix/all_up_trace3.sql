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
                insert into edge values('7594089279765752172', '3655961242459041076');
insert into edge values('3471566328869603469', '-3905454569789070802');
insert into edge values('-3905454569789070802', '1566339264911519188');
insert into edge values('4225409749984857476', '-2101837397272958342');
insert into edge values('1566339264911519188', '6332610670654425542');
insert into edge values('-3905454569789070802', '4225409749984857476');
insert into edge values('5715286340715902352', '3471566328869603469');
insert into edge values('-7051992225423794274', '-1222663941738652934');
insert into edge values('-3905454569789070802', '7594089279765752172');
insert into edge values('6308065944532841516', '5777316540967855671');
insert into edge values('-3905454569789070802', '6308065944532841516');
insert into edge values('-3905454569789070802', '-7051992225423794274');
insert into nodelabels values ('4225409749984857476', 'operationName', 'HTTP GET');
insert into nodelabels values ('4225409749984857476', 'startTime', '7');
insert into nodelabels values ('4225409749984857476', 'status.code', '0');
insert into nodelabels values ('4225409749984857476', 'serviceName', 'api-gateway');
insert into nodelabels values ('6332610670654425542', 'operationName', '/users/<user_id>');
insert into nodelabels values ('6332610670654425542', 'startTime', '10');
insert into nodelabels values ('6332610670654425542', 'status.code', '0');
insert into nodelabels values ('6332610670654425542', 'serviceName', 'user-recommendations');
insert into nodelabels values ('-1222663941738652934', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-1222663941738652934', 'startTime', '4');
insert into nodelabels values ('-1222663941738652934', 'status.code', '0');
insert into nodelabels values ('-1222663941738652934', 'serviceName', 'user-profile');
insert into nodelabels values ('7594089279765752172', 'operationName', 'HTTP GET');
insert into nodelabels values ('7594089279765752172', 'startTime', '11');
insert into nodelabels values ('7594089279765752172', 'status.code', '0');
insert into nodelabels values ('7594089279765752172', 'serviceName', 'api-gateway');
insert into nodelabels values ('3471566328869603469', 'operationName', 'HTTP GET');
insert into nodelabels values ('3471566328869603469', 'startTime', '1');
insert into nodelabels values ('3471566328869603469', 'status.code', '0');
insert into nodelabels values ('3471566328869603469', 'serviceName', 'mobile-client');
insert into nodelabels values ('-3905454569789070802', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('-3905454569789070802', 'startTime', '2');
insert into nodelabels values ('-3905454569789070802', 'status.code', '0');
insert into nodelabels values ('-3905454569789070802', 'serviceName', 'api-gateway');
insert into nodelabels values ('6308065944532841516', 'operationName', 'HTTP GET');
insert into nodelabels values ('6308065944532841516', 'startTime', '5');
insert into nodelabels values ('6308065944532841516', 'status.code', '0');
insert into nodelabels values ('6308065944532841516', 'serviceName', 'api-gateway');
insert into nodelabels values ('5715286340715902352', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('5715286340715902352', 'startTime', '0');
insert into nodelabels values ('5715286340715902352', 'status.code', '0');
insert into nodelabels values ('5715286340715902352', 'serviceName', 'mobile-client');
insert into nodelabels values ('1566339264911519188', 'operationName', 'HTTP GET');
insert into nodelabels values ('1566339264911519188', 'startTime', '9');
insert into nodelabels values ('1566339264911519188', 'status.code', '0');
insert into nodelabels values ('1566339264911519188', 'serviceName', 'api-gateway');
insert into nodelabels values ('3655961242459041076', 'operationName', '/users/<user_id>');
insert into nodelabels values ('3655961242459041076', 'startTime', '12');
insert into nodelabels values ('3655961242459041076', 'status.code', '0');
insert into nodelabels values ('3655961242459041076', 'serviceName', 'ratings');
insert into nodelabels values ('5777316540967855671', 'operationName', '/users/<user_id>');
insert into nodelabels values ('5777316540967855671', 'startTime', '6');
insert into nodelabels values ('5777316540967855671', 'status.code', '0');
insert into nodelabels values ('5777316540967855671', 'serviceName', 'bookmarks');
insert into nodelabels values ('-2101837397272958342', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-2101837397272958342', 'startTime', '8');
insert into nodelabels values ('-2101837397272958342', 'status.code', '0');
insert into nodelabels values ('-2101837397272958342', 'serviceName', 'my-list');
insert into nodelabels values ('-7051992225423794274', 'operationName', 'HTTP GET');
insert into nodelabels values ('-7051992225423794274', 'startTime', '3');
insert into nodelabels values ('-7051992225423794274', 'status.code', '0');
insert into nodelabels values ('-7051992225423794274', 'serviceName', 'api-gateway');

