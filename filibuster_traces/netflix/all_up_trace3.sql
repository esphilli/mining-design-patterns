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
                insert into edge values('4369300370352014288', '929912412792905622');
insert into edge values('-8094322204048878626', '-1709758180901349876');
insert into edge values('6358920229336531334', '-8951700094927885301');
insert into edge values('-8951700094927885301', '-8094322204048878626');
insert into edge values('-8951700094927885301', '455410166568999995');
insert into edge values('-8951700094927885301', '4369300370352014288');
insert into edge values('-8951700094927885301', '1798936019642409771');
insert into edge values('-7139855811398123150', '-1245532229512645767');
insert into edge values('455410166568999995', '-7740031705019661383');
insert into edge values('1798936019642409771', '-9005685298865910714');
insert into edge values('-3042026738213823215', '6358920229336531334');
insert into edge values('-8951700094927885301', '-7139855811398123150');
insert into nodelabels values ('6358920229336531334', 'operationName', 'HTTP GET');
insert into nodelabels values ('6358920229336531334', 'startTime', '1');
insert into nodelabels values ('6358920229336531334', 'status.code', '0');
insert into nodelabels values ('6358920229336531334', 'serviceName', 'mobile-client');
insert into nodelabels values ('-9005685298865910714', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-9005685298865910714', 'startTime', '10');
insert into nodelabels values ('-9005685298865910714', 'status.code', '0');
insert into nodelabels values ('-9005685298865910714', 'serviceName', 'user-recommendations');
insert into nodelabels values ('-8951700094927885301', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('-8951700094927885301', 'startTime', '2');
insert into nodelabels values ('-8951700094927885301', 'status.code', '0');
insert into nodelabels values ('-8951700094927885301', 'serviceName', 'api-gateway');
insert into nodelabels values ('-1709758180901349876', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-1709758180901349876', 'startTime', '6');
insert into nodelabels values ('-1709758180901349876', 'status.code', '0');
insert into nodelabels values ('-1709758180901349876', 'serviceName', 'bookmarks');
insert into nodelabels values ('1798936019642409771', 'operationName', 'HTTP GET');
insert into nodelabels values ('1798936019642409771', 'startTime', '9');
insert into nodelabels values ('1798936019642409771', 'status.code', '0');
insert into nodelabels values ('1798936019642409771', 'serviceName', 'api-gateway');
insert into nodelabels values ('4369300370352014288', 'operationName', 'HTTP GET');
insert into nodelabels values ('4369300370352014288', 'startTime', '11');
insert into nodelabels values ('4369300370352014288', 'status.code', '0');
insert into nodelabels values ('4369300370352014288', 'serviceName', 'api-gateway');
insert into nodelabels values ('-3042026738213823215', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('-3042026738213823215', 'startTime', '0');
insert into nodelabels values ('-3042026738213823215', 'status.code', '0');
insert into nodelabels values ('-3042026738213823215', 'serviceName', 'mobile-client');
insert into nodelabels values ('-7139855811398123150', 'operationName', 'HTTP GET');
insert into nodelabels values ('-7139855811398123150', 'startTime', '7');
insert into nodelabels values ('-7139855811398123150', 'status.code', '0');
insert into nodelabels values ('-7139855811398123150', 'serviceName', 'api-gateway');
insert into nodelabels values ('929912412792905622', 'operationName', '/users/<user_id>');
insert into nodelabels values ('929912412792905622', 'startTime', '12');
insert into nodelabels values ('929912412792905622', 'status.code', '0');
insert into nodelabels values ('929912412792905622', 'serviceName', 'ratings');
insert into nodelabels values ('-7740031705019661383', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-7740031705019661383', 'startTime', '4');
insert into nodelabels values ('-7740031705019661383', 'status.code', '0');
insert into nodelabels values ('-7740031705019661383', 'serviceName', 'user-profile');
insert into nodelabels values ('-1245532229512645767', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-1245532229512645767', 'startTime', '8');
insert into nodelabels values ('-1245532229512645767', 'status.code', '0');
insert into nodelabels values ('-1245532229512645767', 'serviceName', 'my-list');
insert into nodelabels values ('455410166568999995', 'operationName', 'HTTP GET');
insert into nodelabels values ('455410166568999995', 'startTime', '3');
insert into nodelabels values ('455410166568999995', 'status.code', '0');
insert into nodelabels values ('455410166568999995', 'serviceName', 'api-gateway');
insert into nodelabels values ('-8094322204048878626', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8094322204048878626', 'startTime', '5');
insert into nodelabels values ('-8094322204048878626', 'status.code', '0');
insert into nodelabels values ('-8094322204048878626', 'serviceName', 'api-gateway');

