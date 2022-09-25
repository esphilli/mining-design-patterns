create table edge(
                    src varchar2[100],
                    dst varchar2[100]
                );
                create table nodelabels(
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
                insert into edge values ('-5227501910388031155', '4511882631590771172');
insert into edge values ('-8072162648847812402', '3277909347248653496');
insert into edge values ('-790651203869151220', '-8072162648847812402');
insert into edge values ('-790651203869151220', '-5227501910388031155');
insert into nodelabels values ('4511882631590771172', 'operationName', '/hotels/<hotel_id>');
insert into nodelabels values ('4511882631590771172', 'startTime', '4');
insert into nodelabels values ('4511882631590771172', 'status.code', '0');
insert into nodelabels values ('4511882631590771172', 'serviceName', 'review-time');
insert into nodelabels values ('-790651203869151220', 'operationName', '/review/hotels/<hotel_id>');
insert into nodelabels values ('-790651203869151220', 'startTime', '0');
insert into nodelabels values ('-790651203869151220', 'status.code', '0');
insert into nodelabels values ('-790651203869151220', 'serviceName', 'api-gateway');
insert into nodelabels values ('-5227501910388031155', 'operationName', 'HTTP GET');
insert into nodelabels values ('-5227501910388031155', 'startTime', '3');
insert into nodelabels values ('-5227501910388031155', 'status.code', '0');
insert into nodelabels values ('-5227501910388031155', 'serviceName', 'api-gateway');
insert into nodelabels values ('-8072162648847812402', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8072162648847812402', 'startTime', '1');
insert into nodelabels values ('-8072162648847812402', 'status.code', '1');
insert into nodelabels values ('-8072162648847812402', 'serviceName', 'api-gateway');
insert into nodelabels values ('3277909347248653496', 'operationName', '/hotels/<hotel_id>');
insert into nodelabels values ('3277909347248653496', 'startTime', '2');
insert into nodelabels values ('3277909347248653496', 'status.code', '1');
insert into nodelabels values ('3277909347248653496', 'serviceName', 'review-ml');

