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
                insert into edge values('3730922827478332527', '4589551439255364367');
insert into edge values('-4020210740609694045', '-2823948636122822323');
insert into edge values('-6421961759923306779', '8253021331333674044');
insert into edge values('-4020210740609694045', '7044676109684174208');
insert into edge values('-4020210740609694045', '5064532567120466745');
insert into edge values('4589551439255364367', '-4020210740609694045');
insert into edge values('-4020210740609694045', '-3074040362570484837');
insert into edge values('-3074040362570484837', '-143866621808959667');
insert into edge values('-4020210740609694045', '-6421961759923306779');
insert into edge values('5064532567120466745', '-1554175480055156020');
insert into edge values('-3242090851110063950', '-3730474260191962267');
insert into edge values('-4020210740609694045', '-3242090851110063950');
insert into edge values('7044676109684174208', '-552728271816949175');
insert into nodelabels values ('7044676109684174208', 'operationName', 'HTTP GET');
insert into nodelabels values ('7044676109684174208', 'startTime', '5');
insert into nodelabels values ('7044676109684174208', 'status.code', '0');
insert into nodelabels values ('7044676109684174208', 'serviceName', 'api-gateway');
insert into nodelabels values ('-4020210740609694045', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('-4020210740609694045', 'startTime', '2');
insert into nodelabels values ('-4020210740609694045', 'status.code', '0');
insert into nodelabels values ('-4020210740609694045', 'serviceName', 'api-gateway');
insert into nodelabels values ('-6421961759923306779', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6421961759923306779', 'startTime', '12');
insert into nodelabels values ('-6421961759923306779', 'status.code', '0');
insert into nodelabels values ('-6421961759923306779', 'serviceName', 'api-gateway');
insert into nodelabels values ('-3730474260191962267', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-3730474260191962267', 'startTime', '4');
insert into nodelabels values ('-3730474260191962267', 'status.code', '0');
insert into nodelabels values ('-3730474260191962267', 'serviceName', 'user-profile');
insert into nodelabels values ('-552728271816949175', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-552728271816949175', 'startTime', '6');
insert into nodelabels values ('-552728271816949175', 'status.code', '0');
insert into nodelabels values ('-552728271816949175', 'serviceName', 'bookmarks');
insert into nodelabels values ('-1554175480055156020', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-1554175480055156020', 'startTime', '8');
insert into nodelabels values ('-1554175480055156020', 'status.code', '0');
insert into nodelabels values ('-1554175480055156020', 'serviceName', 'my-list');
insert into nodelabels values ('-2823948636122822323', 'operationName', 'HTTP GET');
insert into nodelabels values ('-2823948636122822323', 'startTime', '9');
insert into nodelabels values ('-2823948636122822323', 'status.code', '1');
insert into nodelabels values ('-2823948636122822323', 'serviceName', 'api-gateway');
insert into nodelabels values ('-143866621808959667', 'operationName', '/');
insert into nodelabels values ('-143866621808959667', 'startTime', '11');
insert into nodelabels values ('-143866621808959667', 'status.code', '0');
insert into nodelabels values ('-143866621808959667', 'serviceName', 'global-recommendations');
insert into nodelabels values ('4589551439255364367', 'operationName', 'HTTP GET');
insert into nodelabels values ('4589551439255364367', 'startTime', '1');
insert into nodelabels values ('4589551439255364367', 'status.code', '0');
insert into nodelabels values ('4589551439255364367', 'serviceName', 'mobile-client');
insert into nodelabels values ('3730922827478332527', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('3730922827478332527', 'startTime', '0');
insert into nodelabels values ('3730922827478332527', 'status.code', '0');
insert into nodelabels values ('3730922827478332527', 'serviceName', 'mobile-client');
insert into nodelabels values ('-3242090851110063950', 'operationName', 'HTTP GET');
insert into nodelabels values ('-3242090851110063950', 'startTime', '3');
insert into nodelabels values ('-3242090851110063950', 'status.code', '0');
insert into nodelabels values ('-3242090851110063950', 'serviceName', 'api-gateway');
insert into nodelabels values ('5064532567120466745', 'operationName', 'HTTP GET');
insert into nodelabels values ('5064532567120466745', 'startTime', '7');
insert into nodelabels values ('5064532567120466745', 'status.code', '0');
insert into nodelabels values ('5064532567120466745', 'serviceName', 'api-gateway');
insert into nodelabels values ('-3074040362570484837', 'operationName', 'HTTP GET');
insert into nodelabels values ('-3074040362570484837', 'startTime', '10');
insert into nodelabels values ('-3074040362570484837', 'status.code', '0');
insert into nodelabels values ('-3074040362570484837', 'serviceName', 'api-gateway');
insert into nodelabels values ('8253021331333674044', 'operationName', '/users/<user_id>');
insert into nodelabels values ('8253021331333674044', 'startTime', '13');
insert into nodelabels values ('8253021331333674044', 'status.code', '0');
insert into nodelabels values ('8253021331333674044', 'serviceName', 'ratings');

