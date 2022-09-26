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
                insert into edge values('-5629999867111549481', '-8127778371771564658');
insert into edge values('1871803154431265915', '-5629999867111549481');
insert into nodelabels values ('1871803154431265915', 'operationName', '/review/hotels/<hotel_id>');
insert into nodelabels values ('1871803154431265915', 'startTime', '0');
insert into nodelabels values ('1871803154431265915', 'status.code', '0');
insert into nodelabels values ('1871803154431265915', 'serviceName', 'api-gateway');
insert into nodelabels values ('-8127778371771564658', 'operationName', '/hotels/<hotel_id>');
insert into nodelabels values ('-8127778371771564658', 'startTime', '2');
insert into nodelabels values ('-8127778371771564658', 'status.code', '0');
insert into nodelabels values ('-8127778371771564658', 'serviceName', 'review-ml');
insert into nodelabels values ('-5629999867111549481', 'operationName', 'HTTP GET');
insert into nodelabels values ('-5629999867111549481', 'startTime', '1');
insert into nodelabels values ('-5629999867111549481', 'status.code', '0');
insert into nodelabels values ('-5629999867111549481', 'serviceName', 'api-gateway');

