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
                insert into edge values ('4590988286656661544', '-3287703422869748230');
insert into edge values ('906551560023798947', '2596297138548909044');
insert into edge values ('906551560023798947', '4590988286656661544');
insert into nodelabels values ('4590988286656661544', 'operationName', 'HTTP GET');
insert into nodelabels values ('4590988286656661544', 'startTime', '2');
insert into nodelabels values ('4590988286656661544', 'status.code', '0');
insert into nodelabels values ('4590988286656661544', 'serviceName', 'api-gateway');
insert into nodelabels values ('-3287703422869748230', 'operationName', '/hotels/<hotel_id>');
insert into nodelabels values ('-3287703422869748230', 'startTime', '3');
insert into nodelabels values ('-3287703422869748230', 'status.code', '0');
insert into nodelabels values ('-3287703422869748230', 'serviceName', 'review-time');
insert into nodelabels values ('906551560023798947', 'operationName', '/review/hotels/<hotel_id>');
insert into nodelabels values ('906551560023798947', 'startTime', '0');
insert into nodelabels values ('906551560023798947', 'status.code', '0');
insert into nodelabels values ('906551560023798947', 'serviceName', 'api-gateway');
insert into nodelabels values ('2596297138548909044', 'operationName', 'HTTP GET');
insert into nodelabels values ('2596297138548909044', 'startTime', '1');
insert into nodelabels values ('2596297138548909044', 'status.code', '1');
insert into nodelabels values ('2596297138548909044', 'serviceName', 'api-gateway');

