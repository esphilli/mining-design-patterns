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
                insert into edge values ('5208527980719674395', '-4844615650187823270');
insert into edge values ('-5023392031031280231', '5208527980719674395');
insert into edge values ('-5023392031031280231', '-8386246624487978555');
insert into edge values ('-8386246624487978555', '-2448329037098991283');
insert into nodelabels values ('-8386246624487978555', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8386246624487978555', 'startTime', '3');
insert into nodelabels values ('-8386246624487978555', 'status.code', '0');
insert into nodelabels values ('-8386246624487978555', 'serviceName', 'api-gateway');
insert into nodelabels values ('-2448329037098991283', 'operationName', '/hotels/<hotel_id>');
insert into nodelabels values ('-2448329037098991283', 'startTime', '4');
insert into nodelabels values ('-2448329037098991283', 'status.code', '0');
insert into nodelabels values ('-2448329037098991283', 'serviceName', 'review-time');
insert into nodelabels values ('-5023392031031280231', 'operationName', '/review/hotels/<hotel_id>');
insert into nodelabels values ('-5023392031031280231', 'startTime', '0');
insert into nodelabels values ('-5023392031031280231', 'status.code', '0');
insert into nodelabels values ('-5023392031031280231', 'serviceName', 'api-gateway');
insert into nodelabels values ('-4844615650187823270', 'operationName', '/hotels/<hotel_id>');
insert into nodelabels values ('-4844615650187823270', 'startTime', '2');
insert into nodelabels values ('-4844615650187823270', 'status.code', '1');
insert into nodelabels values ('-4844615650187823270', 'serviceName', 'review-ml');
insert into nodelabels values ('5208527980719674395', 'operationName', 'HTTP GET');
insert into nodelabels values ('5208527980719674395', 'startTime', '1');
insert into nodelabels values ('5208527980719674395', 'status.code', '1');
insert into nodelabels values ('5208527980719674395', 'serviceName', 'api-gateway');

