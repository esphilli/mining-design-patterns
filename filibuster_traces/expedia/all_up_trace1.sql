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
                insert into edge values ('-5840268379640729615', '1246057213747347301');
insert into edge values ('7050807913288684059', '-5840268379640729615');
insert into nodelabels values ('-5840268379640729615', 'operationName', 'HTTP GET');
insert into nodelabels values ('-5840268379640729615', 'startTime', '1');
insert into nodelabels values ('-5840268379640729615', 'status.code', '0');
insert into nodelabels values ('-5840268379640729615', 'serviceName', 'api-gateway');
insert into nodelabels values ('7050807913288684059', 'operationName', '/review/hotels/<hotel_id>');
insert into nodelabels values ('7050807913288684059', 'startTime', '0');
insert into nodelabels values ('7050807913288684059', 'status.code', '0');
insert into nodelabels values ('7050807913288684059', 'serviceName', 'api-gateway');
insert into nodelabels values ('1246057213747347301', 'operationName', '/hotels/<hotel_id>');
insert into nodelabels values ('1246057213747347301', 'startTime', '2');
insert into nodelabels values ('1246057213747347301', 'status.code', '0');
insert into nodelabels values ('1246057213747347301', 'serviceName', 'review-ml');

