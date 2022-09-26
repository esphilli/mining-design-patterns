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
                insert into edge values('6490633584354872458', '-1168958325934674893');
insert into edge values('-9024901495377431341', '-3160772744024867155');
insert into edge values('-1168958325934674893', '-2280472640215733188');
insert into edge values('6490633584354872458', '-9024901495377431341');
insert into nodelabels values ('6490633584354872458', 'operationName', '/review/hotels/<hotel_id>');
insert into nodelabels values ('6490633584354872458', 'startTime', '0');
insert into nodelabels values ('6490633584354872458', 'status.code', '0');
insert into nodelabels values ('6490633584354872458', 'serviceName', 'api-gateway');
insert into nodelabels values ('-3160772744024867155', 'operationName', '/hotels/<hotel_id>');
insert into nodelabels values ('-3160772744024867155', 'startTime', '4');
insert into nodelabels values ('-3160772744024867155', 'status.code', '0');
insert into nodelabels values ('-3160772744024867155', 'serviceName', 'review-time');
insert into nodelabels values ('-1168958325934674893', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1168958325934674893', 'startTime', '1');
insert into nodelabels values ('-1168958325934674893', 'status.code', '1');
insert into nodelabels values ('-1168958325934674893', 'serviceName', 'api-gateway');
insert into nodelabels values ('-9024901495377431341', 'operationName', 'HTTP GET');
insert into nodelabels values ('-9024901495377431341', 'startTime', '3');
insert into nodelabels values ('-9024901495377431341', 'status.code', '0');
insert into nodelabels values ('-9024901495377431341', 'serviceName', 'api-gateway');
insert into nodelabels values ('-2280472640215733188', 'operationName', '/hotels/<hotel_id>');
insert into nodelabels values ('-2280472640215733188', 'startTime', '2');
insert into nodelabels values ('-2280472640215733188', 'status.code', '1');
insert into nodelabels values ('-2280472640215733188', 'serviceName', 'review-ml');

