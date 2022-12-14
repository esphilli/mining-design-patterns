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
                insert into edge values('4570602277150587059', '2121683679302518401');
insert into edge values('2002183427386786456', '4570602277150587059');
insert into nodelabels values ('2002183427386786456', 'operationName', '/review/hotels/<hotel_id>');
insert into nodelabels values ('2002183427386786456', 'startTime', '0');
insert into nodelabels values ('2002183427386786456', 'status.code', '0');
insert into nodelabels values ('2002183427386786456', 'serviceName', 'api-gateway');
insert into nodelabels values ('2121683679302518401', 'operationName', '/hotels/<hotel_id>');
insert into nodelabels values ('2121683679302518401', 'startTime', '2');
insert into nodelabels values ('2121683679302518401', 'status.code', '0');
insert into nodelabels values ('2121683679302518401', 'serviceName', 'review-ml');
insert into nodelabels values ('4570602277150587059', 'operationName', 'HTTP GET');
insert into nodelabels values ('4570602277150587059', 'startTime', '1');
insert into nodelabels values ('4570602277150587059', 'status.code', '0');
insert into nodelabels values ('4570602277150587059', 'serviceName', 'api-gateway');

