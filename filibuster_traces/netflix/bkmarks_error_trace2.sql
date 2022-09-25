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
                insert into edge values('2319290238674669816', '6932955039538305193');
insert into edge values('2319290238674669816', '8318966292517867731');
insert into edge values('3631361463072353856', '-7129461917011108332');
insert into edge values('-3691007465984654812', '-6728742831042152500');
insert into edge values('-6728742831042152500', '2319290238674669816');
insert into edge values('2319290238674669816', '6103198515978734509');
insert into edge values('7270309052569213326', '-36583373452716593');
insert into edge values('6103198515978734509', '-3652773757435316731');
insert into edge values('8318966292517867731', '-3814755881085994102');
insert into edge values('2319290238674669816', '1566024324226658547');
insert into edge values('2319290238674669816', '3631361463072353856');
insert into edge values('2319290238674669816', '7270309052569213326');
insert into edge values('2319290238674669816', '-2344427102458993572');
insert into edge values('-2344427102458993572', '-5906534340477264614');
insert into edge values('6932955039538305193', '4533026422972620628');
insert into edge values('1566024324226658547', '2093355039135606202');
insert into nodelabels values ('3631361463072353856', 'operationName', 'HTTP GET');
insert into nodelabels values ('3631361463072353856', 'startTime', '15');
insert into nodelabels values ('3631361463072353856', 'status.code', '0');
insert into nodelabels values ('3631361463072353856', 'serviceName', 'api-gateway');
insert into nodelabels values ('-3691007465984654812', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('-3691007465984654812', 'startTime', '0');
insert into nodelabels values ('-3691007465984654812', 'status.code', '0');
insert into nodelabels values ('-3691007465984654812', 'serviceName', 'mobile-client');
insert into nodelabels values ('-3652773757435316731', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-3652773757435316731', 'startTime', '14');
insert into nodelabels values ('-3652773757435316731', 'status.code', '0');
insert into nodelabels values ('-3652773757435316731', 'serviceName', 'user-recommendations');
insert into nodelabels values ('6932955039538305193', 'operationName', 'HTTP POST');
insert into nodelabels values ('6932955039538305193', 'startTime', '7');
insert into nodelabels values ('6932955039538305193', 'status.code', '0');
insert into nodelabels values ('6932955039538305193', 'serviceName', 'api-gateway');
insert into nodelabels values ('-3814755881085994102', 'operationName', '/');
insert into nodelabels values ('-3814755881085994102', 'startTime', '10');
insert into nodelabels values ('-3814755881085994102', 'status.code', '0');
insert into nodelabels values ('-3814755881085994102', 'serviceName', 'trending');
insert into nodelabels values ('-6728742831042152500', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6728742831042152500', 'startTime', '1');
insert into nodelabels values ('-6728742831042152500', 'status.code', '0');
insert into nodelabels values ('-6728742831042152500', 'serviceName', 'mobile-client');
insert into nodelabels values ('6103198515978734509', 'operationName', 'HTTP GET');
insert into nodelabels values ('6103198515978734509', 'startTime', '13');
insert into nodelabels values ('6103198515978734509', 'status.code', '0');
insert into nodelabels values ('6103198515978734509', 'serviceName', 'api-gateway');
insert into nodelabels values ('7270309052569213326', 'operationName', 'HTTP GET');
insert into nodelabels values ('7270309052569213326', 'startTime', '11');
insert into nodelabels values ('7270309052569213326', 'status.code', '0');
insert into nodelabels values ('7270309052569213326', 'serviceName', 'api-gateway');
insert into nodelabels values ('-36583373452716593', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-36583373452716593', 'startTime', '12');
insert into nodelabels values ('-36583373452716593', 'status.code', '0');
insert into nodelabels values ('-36583373452716593', 'serviceName', 'my-list');
insert into nodelabels values ('2093355039135606202', 'operationName', '/users/<user_id>');
insert into nodelabels values ('2093355039135606202', 'startTime', '4');
insert into nodelabels values ('2093355039135606202', 'status.code', '0');
insert into nodelabels values ('2093355039135606202', 'serviceName', 'user-profile');
insert into nodelabels values ('8318966292517867731', 'operationName', 'HTTP GET');
insert into nodelabels values ('8318966292517867731', 'startTime', '9');
insert into nodelabels values ('8318966292517867731', 'status.code', '0');
insert into nodelabels values ('8318966292517867731', 'serviceName', 'api-gateway');
insert into nodelabels values ('-7129461917011108332', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-7129461917011108332', 'startTime', '16');
insert into nodelabels values ('-7129461917011108332', 'status.code', '0');
insert into nodelabels values ('-7129461917011108332', 'serviceName', 'ratings');
insert into nodelabels values ('1566024324226658547', 'operationName', 'HTTP GET');
insert into nodelabels values ('1566024324226658547', 'startTime', '3');
insert into nodelabels values ('1566024324226658547', 'status.code', '0');
insert into nodelabels values ('1566024324226658547', 'serviceName', 'api-gateway');
insert into nodelabels values ('4533026422972620628', 'operationName', '/');
insert into nodelabels values ('4533026422972620628', 'startTime', '8');
insert into nodelabels values ('4533026422972620628', 'status.code', '0');
insert into nodelabels values ('4533026422972620628', 'serviceName', 'telemetry');
insert into nodelabels values ('2319290238674669816', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('2319290238674669816', 'startTime', '2');
insert into nodelabels values ('2319290238674669816', 'status.code', '0');
insert into nodelabels values ('2319290238674669816', 'serviceName', 'api-gateway');
insert into nodelabels values ('-5906534340477264614', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-5906534340477264614', 'startTime', '6');
insert into nodelabels values ('-5906534340477264614', 'status.code', '1');
insert into nodelabels values ('-5906534340477264614', 'serviceName', 'bookmarks');
insert into nodelabels values ('-2344427102458993572', 'operationName', 'HTTP GET');
insert into nodelabels values ('-2344427102458993572', 'startTime', '5');
insert into nodelabels values ('-2344427102458993572', 'status.code', '1');
insert into nodelabels values ('-2344427102458993572', 'serviceName', 'api-gateway');

