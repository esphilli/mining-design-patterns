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
                insert into edge values('-1974598664354386500', '8673414870280886292');
insert into edge values('-1974598664354386500', '-376340168145056503');
insert into edge values('-1974598664354386500', '9032033074642719429');
insert into edge values('-1974598664354386500', '-3079049574025760802');
insert into edge values('-2691748199844205627', '-1974598664354386500');
insert into edge values('-3079049574025760802', '-4763248972905580155');
insert into edge values('4044945922976131469', '5995000494981754577');
insert into edge values('9032033074642719429', '-1409139382876108786');
insert into edge values('-1974598664354386500', '-1058509233094498672');
insert into edge values('2962806890500214108', '-2691748199844205627');
insert into edge values('-1974598664354386500', '4044945922976131469');
insert into edge values('-1974598664354386500', '7342840655640113669');
insert into edge values('8673414870280886292', '634199558057934807');
insert into edge values('-1058509233094498672', '5593870736854291788');
insert into edge values('-376340168145056503', '-7145671493326130356');
insert into nodelabels values ('9032033074642719429', 'operationName', 'HTTP GET');
insert into nodelabels values ('9032033074642719429', 'startTime', '3');
insert into nodelabels values ('9032033074642719429', 'status.code', '0');
insert into nodelabels values ('9032033074642719429', 'serviceName', 'api-gateway');
insert into nodelabels values ('-2691748199844205627', 'operationName', 'HTTP GET');
insert into nodelabels values ('-2691748199844205627', 'startTime', '1');
insert into nodelabels values ('-2691748199844205627', 'status.code', '0');
insert into nodelabels values ('-2691748199844205627', 'serviceName', 'mobile-client');
insert into nodelabels values ('-4763248972905580155', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-4763248972905580155', 'startTime', '11');
insert into nodelabels values ('-4763248972905580155', 'status.code', '0');
insert into nodelabels values ('-4763248972905580155', 'serviceName', 'my-list');
insert into nodelabels values ('7342840655640113669', 'operationName', 'HTTP GET');
insert into nodelabels values ('7342840655640113669', 'startTime', '5');
insert into nodelabels values ('7342840655640113669', 'status.code', '1');
insert into nodelabels values ('7342840655640113669', 'serviceName', 'api-gateway');
insert into nodelabels values ('-376340168145056503', 'operationName', 'HTTP GET');
insert into nodelabels values ('-376340168145056503', 'startTime', '8');
insert into nodelabels values ('-376340168145056503', 'status.code', '0');
insert into nodelabels values ('-376340168145056503', 'serviceName', 'api-gateway');
insert into nodelabels values ('5593870736854291788', 'operationName', '/');
insert into nodelabels values ('5593870736854291788', 'startTime', '7');
insert into nodelabels values ('5593870736854291788', 'status.code', '0');
insert into nodelabels values ('5593870736854291788', 'serviceName', 'telemetry');
insert into nodelabels values ('4044945922976131469', 'operationName', 'HTTP GET');
insert into nodelabels values ('4044945922976131469', 'startTime', '14');
insert into nodelabels values ('4044945922976131469', 'status.code', '0');
insert into nodelabels values ('4044945922976131469', 'serviceName', 'api-gateway');
insert into nodelabels values ('-1409139382876108786', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-1409139382876108786', 'startTime', '4');
insert into nodelabels values ('-1409139382876108786', 'status.code', '0');
insert into nodelabels values ('-1409139382876108786', 'serviceName', 'user-profile');
insert into nodelabels values ('-7145671493326130356', 'operationName', '/');
insert into nodelabels values ('-7145671493326130356', 'startTime', '9');
insert into nodelabels values ('-7145671493326130356', 'status.code', '0');
insert into nodelabels values ('-7145671493326130356', 'serviceName', 'trending');
insert into nodelabels values ('-1058509233094498672', 'operationName', 'HTTP POST');
insert into nodelabels values ('-1058509233094498672', 'startTime', '6');
insert into nodelabels values ('-1058509233094498672', 'status.code', '0');
insert into nodelabels values ('-1058509233094498672', 'serviceName', 'api-gateway');
insert into nodelabels values ('5995000494981754577', 'operationName', '/users/<user_id>');
insert into nodelabels values ('5995000494981754577', 'startTime', '15');
insert into nodelabels values ('5995000494981754577', 'status.code', '0');
insert into nodelabels values ('5995000494981754577', 'serviceName', 'ratings');
insert into nodelabels values ('634199558057934807', 'operationName', '/users/<user_id>');
insert into nodelabels values ('634199558057934807', 'startTime', '13');
insert into nodelabels values ('634199558057934807', 'status.code', '0');
insert into nodelabels values ('634199558057934807', 'serviceName', 'user-recommendations');
insert into nodelabels values ('8673414870280886292', 'operationName', 'HTTP GET');
insert into nodelabels values ('8673414870280886292', 'startTime', '12');
insert into nodelabels values ('8673414870280886292', 'status.code', '0');
insert into nodelabels values ('8673414870280886292', 'serviceName', 'api-gateway');
insert into nodelabels values ('2962806890500214108', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('2962806890500214108', 'startTime', '0');
insert into nodelabels values ('2962806890500214108', 'status.code', '0');
insert into nodelabels values ('2962806890500214108', 'serviceName', 'mobile-client');
insert into nodelabels values ('-1974598664354386500', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('-1974598664354386500', 'startTime', '2');
insert into nodelabels values ('-1974598664354386500', 'status.code', '0');
insert into nodelabels values ('-1974598664354386500', 'serviceName', 'api-gateway');
insert into nodelabels values ('-3079049574025760802', 'operationName', 'HTTP GET');
insert into nodelabels values ('-3079049574025760802', 'startTime', '10');
insert into nodelabels values ('-3079049574025760802', 'status.code', '0');
insert into nodelabels values ('-3079049574025760802', 'serviceName', 'api-gateway');

