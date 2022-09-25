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
                insert into edge values ('-6672192761312544324', '428628145105936245');
insert into edge values ('-7968747957794187891', '-7241031043268710853');
insert into edge values ('-4729947348304498400', '6596266112586675659');
insert into edge values ('428628145105936245', '-1917154797844567928');
insert into edge values ('-6672192761312544324', '-4729947348304498400');
insert into edge values ('-6672192761312544324', '-7968747957794187891');
insert into nodelabels values ('-4729947348304498400', 'operationName', 'HTTP GET');
insert into nodelabels values ('-4729947348304498400', 'startTime', '3');
insert into nodelabels values ('-4729947348304498400', 'status.code', '0');
insert into nodelabels values ('-4729947348304498400', 'serviceName', 'users');
insert into nodelabels values ('-1917154797844567928', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('-1917154797844567928', 'startTime', '6');
insert into nodelabels values ('-1917154797844567928', 'status.code', '0');
insert into nodelabels values ('-1917154797844567928', 'serviceName', 'movies');
insert into nodelabels values ('6596266112586675659', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('6596266112586675659', 'startTime', '4');
insert into nodelabels values ('6596266112586675659', 'status.code', '0');
insert into nodelabels values ('6596266112586675659', 'serviceName', 'movies');
insert into nodelabels values ('-7968747957794187891', 'operationName', 'HTTP GET');
insert into nodelabels values ('-7968747957794187891', 'startTime', '1');
insert into nodelabels values ('-7968747957794187891', 'status.code', '0');
insert into nodelabels values ('-7968747957794187891', 'serviceName', 'users');
insert into nodelabels values ('428628145105936245', 'operationName', 'HTTP GET');
insert into nodelabels values ('428628145105936245', 'startTime', '5');
insert into nodelabels values ('428628145105936245', 'status.code', '0');
insert into nodelabels values ('428628145105936245', 'serviceName', 'users');
insert into nodelabels values ('-7241031043268710853', 'operationName', '/bookings/<username>');
insert into nodelabels values ('-7241031043268710853', 'startTime', '2');
insert into nodelabels values ('-7241031043268710853', 'status.code', '0');
insert into nodelabels values ('-7241031043268710853', 'serviceName', 'bookings-primary');
insert into nodelabels values ('-6672192761312544324', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('-6672192761312544324', 'startTime', '0');
insert into nodelabels values ('-6672192761312544324', 'status.code', '0');
insert into nodelabels values ('-6672192761312544324', 'serviceName', 'users');

