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
                insert into edge values('-1382476283792652016', '3027886722429158587');
insert into edge values('3027886722429158587', '7256372184629051961');
insert into edge values('3027886722429158587', '-9091443029339053562');
insert into edge values('3027886722429158587', '-1591614266662977268');
insert into edge values('2192259934990047318', '4002589274363125784');
insert into edge values('3027886722429158587', '-8865224807433386824');
insert into edge values('-8865224807433386824', '-245306290180464151');
insert into edge values('-9091443029339053562', '-6380644543131635033');
insert into edge values('3027886722429158587', '-6745228237493982208');
insert into edge values('3027886722429158587', '2192259934990047318');
insert into edge values('3027886722429158587', '2107346176592418432');
insert into edge values('2107346176592418432', '1579071983805009213');
insert into edge values('7256372184629051961', '4955353269193411087');
insert into edge values('-6745228237493982208', '-5628715712457607115');
insert into edge values('-2004965771299861277', '-1382476283792652016');
insert into nodelabels values ('-6745228237493982208', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6745228237493982208', 'startTime', '14');
insert into nodelabels values ('-6745228237493982208', 'status.code', '0');
insert into nodelabels values ('-6745228237493982208', 'serviceName', 'api-gateway');
insert into nodelabels values ('2107346176592418432', 'operationName', 'HTTP POST');
insert into nodelabels values ('2107346176592418432', 'startTime', '6');
insert into nodelabels values ('2107346176592418432', 'status.code', '0');
insert into nodelabels values ('2107346176592418432', 'serviceName', 'api-gateway');
insert into nodelabels values ('-2004965771299861277', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('-2004965771299861277', 'startTime', '0');
insert into nodelabels values ('-2004965771299861277', 'status.code', '0');
insert into nodelabels values ('-2004965771299861277', 'serviceName', 'mobile-client');
insert into nodelabels values ('-9091443029339053562', 'operationName', 'HTTP GET');
insert into nodelabels values ('-9091443029339053562', 'startTime', '10');
insert into nodelabels values ('-9091443029339053562', 'status.code', '0');
insert into nodelabels values ('-9091443029339053562', 'serviceName', 'api-gateway');
insert into nodelabels values ('-6380644543131635033', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-6380644543131635033', 'startTime', '11');
insert into nodelabels values ('-6380644543131635033', 'status.code', '0');
insert into nodelabels values ('-6380644543131635033', 'serviceName', 'my-list');
insert into nodelabels values ('-245306290180464151', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-245306290180464151', 'startTime', '4');
insert into nodelabels values ('-245306290180464151', 'status.code', '0');
insert into nodelabels values ('-245306290180464151', 'serviceName', 'user-profile');
insert into nodelabels values ('-1591614266662977268', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1591614266662977268', 'startTime', '5');
insert into nodelabels values ('-1591614266662977268', 'status.code', '1');
insert into nodelabels values ('-1591614266662977268', 'serviceName', 'api-gateway');
insert into nodelabels values ('4955353269193411087', 'operationName', '/users/<user_id>');
insert into nodelabels values ('4955353269193411087', 'startTime', '13');
insert into nodelabels values ('4955353269193411087', 'status.code', '0');
insert into nodelabels values ('4955353269193411087', 'serviceName', 'user-recommendations');
insert into nodelabels values ('-1382476283792652016', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1382476283792652016', 'startTime', '1');
insert into nodelabels values ('-1382476283792652016', 'status.code', '0');
insert into nodelabels values ('-1382476283792652016', 'serviceName', 'mobile-client');
insert into nodelabels values ('-5628715712457607115', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-5628715712457607115', 'startTime', '15');
insert into nodelabels values ('-5628715712457607115', 'status.code', '0');
insert into nodelabels values ('-5628715712457607115', 'serviceName', 'ratings');
insert into nodelabels values ('2192259934990047318', 'operationName', 'HTTP GET');
insert into nodelabels values ('2192259934990047318', 'startTime', '8');
insert into nodelabels values ('2192259934990047318', 'status.code', '0');
insert into nodelabels values ('2192259934990047318', 'serviceName', 'api-gateway');
insert into nodelabels values ('4002589274363125784', 'operationName', '/');
insert into nodelabels values ('4002589274363125784', 'startTime', '9');
insert into nodelabels values ('4002589274363125784', 'status.code', '0');
insert into nodelabels values ('4002589274363125784', 'serviceName', 'trending');
insert into nodelabels values ('7256372184629051961', 'operationName', 'HTTP GET');
insert into nodelabels values ('7256372184629051961', 'startTime', '12');
insert into nodelabels values ('7256372184629051961', 'status.code', '0');
insert into nodelabels values ('7256372184629051961', 'serviceName', 'api-gateway');
insert into nodelabels values ('3027886722429158587', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('3027886722429158587', 'startTime', '2');
insert into nodelabels values ('3027886722429158587', 'status.code', '0');
insert into nodelabels values ('3027886722429158587', 'serviceName', 'api-gateway');
insert into nodelabels values ('1579071983805009213', 'operationName', '/');
insert into nodelabels values ('1579071983805009213', 'startTime', '7');
insert into nodelabels values ('1579071983805009213', 'status.code', '0');
insert into nodelabels values ('1579071983805009213', 'serviceName', 'telemetry');
insert into nodelabels values ('-8865224807433386824', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8865224807433386824', 'startTime', '3');
insert into nodelabels values ('-8865224807433386824', 'status.code', '0');
insert into nodelabels values ('-8865224807433386824', 'serviceName', 'api-gateway');

