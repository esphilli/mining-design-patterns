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
                insert into edge values('5221981963355188431', '1479086747897573142');
insert into edge values('5221981963355188431', '3333101340723433953');
insert into edge values('5221981963355188431', '3213097063540763988');
insert into edge values('5221981963355188431', '324093322104269907');
insert into edge values('3523902256484333788', '1763254625308300549');
insert into edge values('8596911361181552092', '5254677945975051925');
insert into edge values('-5628761081482097455', '5200842891279867796');
insert into edge values('3213097063540763988', '-5886376566410971572');
insert into edge values('5221981963355188431', '8596911361181552092');
insert into edge values('1763254625308300549', '5221981963355188431');
insert into edge values('7400341727998401691', '-1819314487385461246');
insert into edge values('5221981963355188431', '-5628761081482097455');
insert into edge values('5221981963355188431', '7400341727998401691');
insert into edge values('324093322104269907', '8037293059441793325');
insert into edge values('3333101340723433953', '7443800540784012532');
insert into nodelabels values ('3333101340723433953', 'operationName', 'HTTP POST');
insert into nodelabels values ('3333101340723433953', 'startTime', '6');
insert into nodelabels values ('3333101340723433953', 'status.code', '0');
insert into nodelabels values ('3333101340723433953', 'serviceName', 'api-gateway');
insert into nodelabels values ('-1819314487385461246', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-1819314487385461246', 'startTime', '15');
insert into nodelabels values ('-1819314487385461246', 'status.code', '0');
insert into nodelabels values ('-1819314487385461246', 'serviceName', 'ratings');
insert into nodelabels values ('1763254625308300549', 'operationName', 'HTTP GET');
insert into nodelabels values ('1763254625308300549', 'startTime', '1');
insert into nodelabels values ('1763254625308300549', 'status.code', '0');
insert into nodelabels values ('1763254625308300549', 'serviceName', 'mobile-client');
insert into nodelabels values ('-5886376566410971572', 'operationName', '/');
insert into nodelabels values ('-5886376566410971572', 'startTime', '9');
insert into nodelabels values ('-5886376566410971572', 'status.code', '0');
insert into nodelabels values ('-5886376566410971572', 'serviceName', 'trending');
insert into nodelabels values ('7400341727998401691', 'operationName', 'HTTP GET');
insert into nodelabels values ('7400341727998401691', 'startTime', '14');
insert into nodelabels values ('7400341727998401691', 'status.code', '0');
insert into nodelabels values ('7400341727998401691', 'serviceName', 'api-gateway');
insert into nodelabels values ('8037293059441793325', 'operationName', '/users/<user_id>');
insert into nodelabels values ('8037293059441793325', 'startTime', '11');
insert into nodelabels values ('8037293059441793325', 'status.code', '0');
insert into nodelabels values ('8037293059441793325', 'serviceName', 'my-list');
insert into nodelabels values ('5221981963355188431', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('5221981963355188431', 'startTime', '2');
insert into nodelabels values ('5221981963355188431', 'status.code', '0');
insert into nodelabels values ('5221981963355188431', 'serviceName', 'api-gateway');
insert into nodelabels values ('-5628761081482097455', 'operationName', 'HTTP GET');
insert into nodelabels values ('-5628761081482097455', 'startTime', '3');
insert into nodelabels values ('-5628761081482097455', 'status.code', '0');
insert into nodelabels values ('-5628761081482097455', 'serviceName', 'api-gateway');
insert into nodelabels values ('324093322104269907', 'operationName', 'HTTP GET');
insert into nodelabels values ('324093322104269907', 'startTime', '10');
insert into nodelabels values ('324093322104269907', 'status.code', '0');
insert into nodelabels values ('324093322104269907', 'serviceName', 'api-gateway');
insert into nodelabels values ('3213097063540763988', 'operationName', 'HTTP GET');
insert into nodelabels values ('3213097063540763988', 'startTime', '8');
insert into nodelabels values ('3213097063540763988', 'status.code', '0');
insert into nodelabels values ('3213097063540763988', 'serviceName', 'api-gateway');
insert into nodelabels values ('5254677945975051925', 'operationName', '/users/<user_id>');
insert into nodelabels values ('5254677945975051925', 'startTime', '13');
insert into nodelabels values ('5254677945975051925', 'status.code', '0');
insert into nodelabels values ('5254677945975051925', 'serviceName', 'user-recommendations');
insert into nodelabels values ('1479086747897573142', 'operationName', 'HTTP GET');
insert into nodelabels values ('1479086747897573142', 'startTime', '5');
insert into nodelabels values ('1479086747897573142', 'status.code', '1');
insert into nodelabels values ('1479086747897573142', 'serviceName', 'api-gateway');
insert into nodelabels values ('5200842891279867796', 'operationName', '/users/<user_id>');
insert into nodelabels values ('5200842891279867796', 'startTime', '4');
insert into nodelabels values ('5200842891279867796', 'status.code', '0');
insert into nodelabels values ('5200842891279867796', 'serviceName', 'user-profile');
insert into nodelabels values ('7443800540784012532', 'operationName', '/');
insert into nodelabels values ('7443800540784012532', 'startTime', '7');
insert into nodelabels values ('7443800540784012532', 'status.code', '0');
insert into nodelabels values ('7443800540784012532', 'serviceName', 'telemetry');
insert into nodelabels values ('8596911361181552092', 'operationName', 'HTTP GET');
insert into nodelabels values ('8596911361181552092', 'startTime', '12');
insert into nodelabels values ('8596911361181552092', 'status.code', '0');
insert into nodelabels values ('8596911361181552092', 'serviceName', 'api-gateway');
insert into nodelabels values ('3523902256484333788', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('3523902256484333788', 'startTime', '0');
insert into nodelabels values ('3523902256484333788', 'status.code', '0');
insert into nodelabels values ('3523902256484333788', 'serviceName', 'mobile-client');

