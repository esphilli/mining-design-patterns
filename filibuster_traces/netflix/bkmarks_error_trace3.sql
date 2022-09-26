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
                insert into edge values('1817359272361943364', '-523224236825805310');
insert into edge values('-7181971709658380902', '6886224440039086254');
insert into edge values('-973468714749398908', '2134607228860655084');
insert into edge values('1817359272361943364', '-6643368459264917837');
insert into edge values('-1546104959636232881', '1817359272361943364');
insert into edge values('-6065307122755342559', '-3461797505950792888');
insert into edge values('3004300385517674134', '-605109448149231388');
insert into edge values('1817359272361943364', '3004300385517674134');
insert into edge values('-723542538701446671', '-7469132880031113113');
insert into edge values('1817359272361943364', '-723542538701446671');
insert into edge values('1817359272361943364', '-6065307122755342559');
insert into edge values('-6643368459264917837', '1850659252999708277');
insert into edge values('-2639188620811313510', '-1546104959636232881');
insert into edge values('-523224236825805310', '-5925741951978119787');
insert into edge values('1817359272361943364', '-7181971709658380902');
insert into edge values('1817359272361943364', '-973468714749398908');
insert into nodelabels values ('-6065307122755342559', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6065307122755342559', 'startTime', '13');
insert into nodelabels values ('-6065307122755342559', 'status.code', '0');
insert into nodelabels values ('-6065307122755342559', 'serviceName', 'api-gateway');
insert into nodelabels values ('-523224236825805310', 'operationName', 'HTTP GET');
insert into nodelabels values ('-523224236825805310', 'startTime', '5');
insert into nodelabels values ('-523224236825805310', 'status.code', '1');
insert into nodelabels values ('-523224236825805310', 'serviceName', 'api-gateway');
insert into nodelabels values ('-973468714749398908', 'operationName', 'HTTP GET');
insert into nodelabels values ('-973468714749398908', 'startTime', '15');
insert into nodelabels values ('-973468714749398908', 'status.code', '0');
insert into nodelabels values ('-973468714749398908', 'serviceName', 'api-gateway');
insert into nodelabels values ('1817359272361943364', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('1817359272361943364', 'startTime', '2');
insert into nodelabels values ('1817359272361943364', 'status.code', '0');
insert into nodelabels values ('1817359272361943364', 'serviceName', 'api-gateway');
insert into nodelabels values ('-605109448149231388', 'operationName', '/');
insert into nodelabels values ('-605109448149231388', 'startTime', '10');
insert into nodelabels values ('-605109448149231388', 'status.code', '0');
insert into nodelabels values ('-605109448149231388', 'serviceName', 'trending');
insert into nodelabels values ('-7469132880031113113', 'operationName', '/');
insert into nodelabels values ('-7469132880031113113', 'startTime', '8');
insert into nodelabels values ('-7469132880031113113', 'status.code', '0');
insert into nodelabels values ('-7469132880031113113', 'serviceName', 'telemetry');
insert into nodelabels values ('-3461797505950792888', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-3461797505950792888', 'startTime', '14');
insert into nodelabels values ('-3461797505950792888', 'status.code', '0');
insert into nodelabels values ('-3461797505950792888', 'serviceName', 'user-recommendations');
insert into nodelabels values ('2134607228860655084', 'operationName', '/users/<user_id>');
insert into nodelabels values ('2134607228860655084', 'startTime', '16');
insert into nodelabels values ('2134607228860655084', 'status.code', '0');
insert into nodelabels values ('2134607228860655084', 'serviceName', 'ratings');
insert into nodelabels values ('6886224440039086254', 'operationName', '/users/<user_id>');
insert into nodelabels values ('6886224440039086254', 'startTime', '4');
insert into nodelabels values ('6886224440039086254', 'status.code', '0');
insert into nodelabels values ('6886224440039086254', 'serviceName', 'user-profile');
insert into nodelabels values ('-1546104959636232881', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1546104959636232881', 'startTime', '1');
insert into nodelabels values ('-1546104959636232881', 'status.code', '0');
insert into nodelabels values ('-1546104959636232881', 'serviceName', 'mobile-client');
insert into nodelabels values ('-723542538701446671', 'operationName', 'HTTP POST');
insert into nodelabels values ('-723542538701446671', 'startTime', '7');
insert into nodelabels values ('-723542538701446671', 'status.code', '0');
insert into nodelabels values ('-723542538701446671', 'serviceName', 'api-gateway');
insert into nodelabels values ('-6643368459264917837', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6643368459264917837', 'startTime', '11');
insert into nodelabels values ('-6643368459264917837', 'status.code', '0');
insert into nodelabels values ('-6643368459264917837', 'serviceName', 'api-gateway');
insert into nodelabels values ('1850659252999708277', 'operationName', '/users/<user_id>');
insert into nodelabels values ('1850659252999708277', 'startTime', '12');
insert into nodelabels values ('1850659252999708277', 'status.code', '0');
insert into nodelabels values ('1850659252999708277', 'serviceName', 'my-list');
insert into nodelabels values ('3004300385517674134', 'operationName', 'HTTP GET');
insert into nodelabels values ('3004300385517674134', 'startTime', '9');
insert into nodelabels values ('3004300385517674134', 'status.code', '0');
insert into nodelabels values ('3004300385517674134', 'serviceName', 'api-gateway');
insert into nodelabels values ('-2639188620811313510', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('-2639188620811313510', 'startTime', '0');
insert into nodelabels values ('-2639188620811313510', 'status.code', '0');
insert into nodelabels values ('-2639188620811313510', 'serviceName', 'mobile-client');
insert into nodelabels values ('-5925741951978119787', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-5925741951978119787', 'startTime', '6');
insert into nodelabels values ('-5925741951978119787', 'status.code', '1');
insert into nodelabels values ('-5925741951978119787', 'serviceName', 'bookmarks');
insert into nodelabels values ('-7181971709658380902', 'operationName', 'HTTP GET');
insert into nodelabels values ('-7181971709658380902', 'startTime', '3');
insert into nodelabels values ('-7181971709658380902', 'status.code', '0');
insert into nodelabels values ('-7181971709658380902', 'serviceName', 'api-gateway');

