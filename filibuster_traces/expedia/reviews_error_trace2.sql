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
                insert into edge values('-456554953488529771', '-3825918354479797827');
insert into edge values('-3253794551634817158', '3028518877121120634');
insert into edge values('3028518877121120634', '1419588152325827587');
insert into edge values('-3253794551634817158', '-456554953488529771');
insert into nodelabels values ('1419588152325827587', 'operationName', '/hotels/<hotel_id>');
insert into nodelabels values ('1419588152325827587', 'startTime', '4');
insert into nodelabels values ('1419588152325827587', 'status.code', '0');
insert into nodelabels values ('1419588152325827587', 'serviceName', 'review-time');
insert into nodelabels values ('3028518877121120634', 'operationName', 'HTTP GET');
insert into nodelabels values ('3028518877121120634', 'startTime', '3');
insert into nodelabels values ('3028518877121120634', 'status.code', '0');
insert into nodelabels values ('3028518877121120634', 'serviceName', 'api-gateway');
insert into nodelabels values ('-456554953488529771', 'operationName', 'HTTP GET');
insert into nodelabels values ('-456554953488529771', 'startTime', '1');
insert into nodelabels values ('-456554953488529771', 'status.code', '1');
insert into nodelabels values ('-456554953488529771', 'serviceName', 'api-gateway');
insert into nodelabels values ('-3253794551634817158', 'operationName', '/review/hotels/<hotel_id>');
insert into nodelabels values ('-3253794551634817158', 'startTime', '0');
insert into nodelabels values ('-3253794551634817158', 'status.code', '0');
insert into nodelabels values ('-3253794551634817158', 'serviceName', 'api-gateway');
insert into nodelabels values ('-3825918354479797827', 'operationName', '/hotels/<hotel_id>');
insert into nodelabels values ('-3825918354479797827', 'startTime', '2');
insert into nodelabels values ('-3825918354479797827', 'status.code', '1');
insert into nodelabels values ('-3825918354479797827', 'serviceName', 'review-ml');

