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
                insert into edge values('-1778478014756587594', '3542026305277577797');
insert into edge values('-1778478014756587594', '-7652494483208326613');
insert into edge values('3542026305277577797', '7678352563397983450');
insert into edge values('-8930456792492218117', '-1778478014756587594');
insert into edge values('-7652494483208326613', '1481439586705775170');
insert into edge values('-1778478014756587594', '8668081886333785511');
insert into edge values('-1778478014756587594', '1099476187516930636');
insert into edge values('1099476187516930636', '5949102005499494200');
insert into edge values('9216575899465841675', '-8930456792492218117');
insert into edge values('-8600691517842325770', '2083658225212923416');
insert into edge values('-1778478014756587594', '-8600691517842325770');
insert into edge values('8668081886333785511', '6943259526703806623');
insert into nodelabels values ('1481439586705775170', 'operationName', '/users/<user_id>');
insert into nodelabels values ('1481439586705775170', 'startTime', '6');
insert into nodelabels values ('1481439586705775170', 'status.code', '0');
insert into nodelabels values ('1481439586705775170', 'serviceName', 'bookmarks');
insert into nodelabels values ('3542026305277577797', 'operationName', 'HTTP GET');
insert into nodelabels values ('3542026305277577797', 'startTime', '3');
insert into nodelabels values ('3542026305277577797', 'status.code', '0');
insert into nodelabels values ('3542026305277577797', 'serviceName', 'api-gateway');
insert into nodelabels values ('8668081886333785511', 'operationName', 'HTTP GET');
insert into nodelabels values ('8668081886333785511', 'startTime', '9');
insert into nodelabels values ('8668081886333785511', 'status.code', '0');
insert into nodelabels values ('8668081886333785511', 'serviceName', 'api-gateway');
insert into nodelabels values ('2083658225212923416', 'operationName', '/users/<user_id>');
insert into nodelabels values ('2083658225212923416', 'startTime', '8');
insert into nodelabels values ('2083658225212923416', 'status.code', '0');
insert into nodelabels values ('2083658225212923416', 'serviceName', 'my-list');
insert into nodelabels values ('-7652494483208326613', 'operationName', 'HTTP GET');
insert into nodelabels values ('-7652494483208326613', 'startTime', '5');
insert into nodelabels values ('-7652494483208326613', 'status.code', '0');
insert into nodelabels values ('-7652494483208326613', 'serviceName', 'api-gateway');
insert into nodelabels values ('1099476187516930636', 'operationName', 'HTTP GET');
insert into nodelabels values ('1099476187516930636', 'startTime', '11');
insert into nodelabels values ('1099476187516930636', 'status.code', '0');
insert into nodelabels values ('1099476187516930636', 'serviceName', 'api-gateway');
insert into nodelabels values ('9216575899465841675', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('9216575899465841675', 'startTime', '0');
insert into nodelabels values ('9216575899465841675', 'status.code', '0');
insert into nodelabels values ('9216575899465841675', 'serviceName', 'mobile-client');
insert into nodelabels values ('-1778478014756587594', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('-1778478014756587594', 'startTime', '2');
insert into nodelabels values ('-1778478014756587594', 'status.code', '0');
insert into nodelabels values ('-1778478014756587594', 'serviceName', 'api-gateway');
insert into nodelabels values ('-8600691517842325770', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8600691517842325770', 'startTime', '7');
insert into nodelabels values ('-8600691517842325770', 'status.code', '0');
insert into nodelabels values ('-8600691517842325770', 'serviceName', 'api-gateway');
insert into nodelabels values ('5949102005499494200', 'operationName', '/users/<user_id>');
insert into nodelabels values ('5949102005499494200', 'startTime', '12');
insert into nodelabels values ('5949102005499494200', 'status.code', '0');
insert into nodelabels values ('5949102005499494200', 'serviceName', 'ratings');
insert into nodelabels values ('7678352563397983450', 'operationName', '/users/<user_id>');
insert into nodelabels values ('7678352563397983450', 'startTime', '4');
insert into nodelabels values ('7678352563397983450', 'status.code', '0');
insert into nodelabels values ('7678352563397983450', 'serviceName', 'user-profile');
insert into nodelabels values ('-8930456792492218117', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8930456792492218117', 'startTime', '1');
insert into nodelabels values ('-8930456792492218117', 'status.code', '0');
insert into nodelabels values ('-8930456792492218117', 'serviceName', 'mobile-client');
insert into nodelabels values ('6943259526703806623', 'operationName', '/users/<user_id>');
insert into nodelabels values ('6943259526703806623', 'startTime', '10');
insert into nodelabels values ('6943259526703806623', 'status.code', '0');
insert into nodelabels values ('6943259526703806623', 'serviceName', 'user-recommendations');

