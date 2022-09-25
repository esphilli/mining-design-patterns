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
                insert into edge values ('-4156007221576751155', '-116287754186347716');
insert into edge values ('6920908629597504967', '3601543055465343821');
insert into edge values ('5999925441624063092', '-4156007221576751155');
insert into edge values ('2875188608404180159', '6444843830547203982');
insert into edge values ('764848446572089242', '6285190850392235297');
insert into edge values ('5999925441624063092', '764848446572089242');
insert into edge values ('-8077297134938788023', '8541491529073087828');
insert into edge values ('5999925441624063092', '-8077297134938788023');
insert into edge values ('5999925441624063092', '6920908629597504967');
insert into edge values ('5999925441624063092', '2875188608404180159');
insert into nodelabels values ('6285190850392235297', 'operationName', '/bookings/<username>');
insert into nodelabels values ('6285190850392235297', 'startTime', '2');
insert into nodelabels values ('6285190850392235297', 'status.code', '1');
insert into nodelabels values ('6285190850392235297', 'serviceName', 'bookings-primary');
insert into nodelabels values ('6920908629597504967', 'operationName', 'HTTP GET');
insert into nodelabels values ('6920908629597504967', 'startTime', '9');
insert into nodelabels values ('6920908629597504967', 'status.code', '0');
insert into nodelabels values ('6920908629597504967', 'serviceName', 'users');
insert into nodelabels values ('-8077297134938788023', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8077297134938788023', 'startTime', '7');
insert into nodelabels values ('-8077297134938788023', 'status.code', '0');
insert into nodelabels values ('-8077297134938788023', 'serviceName', 'users');
insert into nodelabels values ('-4156007221576751155', 'operationName', 'HTTP GET');
insert into nodelabels values ('-4156007221576751155', 'startTime', '5');
insert into nodelabels values ('-4156007221576751155', 'status.code', '0');
insert into nodelabels values ('-4156007221576751155', 'serviceName', 'users');
insert into nodelabels values ('3601543055465343821', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('3601543055465343821', 'startTime', '10');
insert into nodelabels values ('3601543055465343821', 'status.code', '0');
insert into nodelabels values ('3601543055465343821', 'serviceName', 'movies');
insert into nodelabels values ('6444843830547203982', 'operationName', '/bookings/<username>');
insert into nodelabels values ('6444843830547203982', 'startTime', '4');
insert into nodelabels values ('6444843830547203982', 'status.code', '0');
insert into nodelabels values ('6444843830547203982', 'serviceName', 'bookings-secondary');
insert into nodelabels values ('5999925441624063092', 'operationName', '/users/<username>/bookings');
insert into nodelabels values ('5999925441624063092', 'startTime', '0');
insert into nodelabels values ('5999925441624063092', 'status.code', '0');
insert into nodelabels values ('5999925441624063092', 'serviceName', 'users');
insert into nodelabels values ('8541491529073087828', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('8541491529073087828', 'startTime', '8');
insert into nodelabels values ('8541491529073087828', 'status.code', '0');
insert into nodelabels values ('8541491529073087828', 'serviceName', 'movies');
insert into nodelabels values ('764848446572089242', 'operationName', 'HTTP GET');
insert into nodelabels values ('764848446572089242', 'startTime', '1');
insert into nodelabels values ('764848446572089242', 'status.code', '1');
insert into nodelabels values ('764848446572089242', 'serviceName', 'users');
insert into nodelabels values ('-116287754186347716', 'operationName', '/movies/<movieid>');
insert into nodelabels values ('-116287754186347716', 'startTime', '6');
insert into nodelabels values ('-116287754186347716', 'status.code', '0');
insert into nodelabels values ('-116287754186347716', 'serviceName', 'movies');
insert into nodelabels values ('2875188608404180159', 'operationName', 'HTTP GET');
insert into nodelabels values ('2875188608404180159', 'startTime', '3');
insert into nodelabels values ('2875188608404180159', 'status.code', '0');
insert into nodelabels values ('2875188608404180159', 'serviceName', 'users');

