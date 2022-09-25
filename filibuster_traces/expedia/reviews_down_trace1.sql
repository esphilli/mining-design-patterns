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
                insert into edge values ('8217613252247102832', '-339705523080408889');
insert into edge values ('6101917470450666782', '5190498656955766735');
insert into edge values ('8217613252247102832', '6101917470450666782');
insert into nodelabels values ('8217613252247102832', 'operationName', '/review/hotels/<hotel_id>');
insert into nodelabels values ('8217613252247102832', 'startTime', '0');
insert into nodelabels values ('8217613252247102832', 'status.code', '0');
insert into nodelabels values ('8217613252247102832', 'serviceName', 'api-gateway');
insert into nodelabels values ('5190498656955766735', 'operationName', '/hotels/<hotel_id>');
insert into nodelabels values ('5190498656955766735', 'startTime', '3');
insert into nodelabels values ('5190498656955766735', 'status.code', '0');
insert into nodelabels values ('5190498656955766735', 'serviceName', 'review-time');
insert into nodelabels values ('6101917470450666782', 'operationName', 'HTTP GET');
insert into nodelabels values ('6101917470450666782', 'startTime', '2');
insert into nodelabels values ('6101917470450666782', 'status.code', '0');
insert into nodelabels values ('6101917470450666782', 'serviceName', 'api-gateway');
insert into nodelabels values ('-339705523080408889', 'operationName', 'HTTP GET');
insert into nodelabels values ('-339705523080408889', 'startTime', '1');
insert into nodelabels values ('-339705523080408889', 'status.code', '1');
insert into nodelabels values ('-339705523080408889', 'serviceName', 'api-gateway');

