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
                insert into edge values('4777569515337797529', '-7529392726712654634');
insert into edge values('791131743915350979', '-6883745531025885770');
insert into edge values('3411505546397625415', '-2673105316197755624');
insert into edge values('405140732724856034', '3411505546397625415');
insert into edge values('-5085903863730751513', '8050271492309383037');
insert into edge values('-1688162908087661456', '-470329223902096249');
insert into edge values('8753821272261613294', '405140732724856034');
insert into edge values('405140732724856034', '-1688162908087661456');
insert into edge values('405140732724856034', '-6953188238781730727');
insert into edge values('405140732724856034', '791131743915350979');
insert into edge values('405140732724856034', '4777569515337797529');
insert into edge values('-6953188238781730727', '-7550842900822491682');
insert into edge values('3050048092403036924', '8753821272261613294');
insert into edge values('405140732724856034', '-5085903863730751513');
insert into nodelabels values ('-6953188238781730727', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6953188238781730727', 'startTime', '11');
insert into nodelabels values ('-6953188238781730727', 'status.code', '0');
insert into nodelabels values ('-6953188238781730727', 'serviceName', 'api-gateway');
insert into nodelabels values ('405140732724856034', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('405140732724856034', 'startTime', '2');
insert into nodelabels values ('405140732724856034', 'status.code', '0');
insert into nodelabels values ('405140732724856034', 'serviceName', 'api-gateway');
insert into nodelabels values ('791131743915350979', 'operationName', 'HTTP GET');
insert into nodelabels values ('791131743915350979', 'startTime', '9');
insert into nodelabels values ('791131743915350979', 'status.code', '1');
insert into nodelabels values ('791131743915350979', 'serviceName', 'api-gateway');
insert into nodelabels values ('3411505546397625415', 'operationName', 'HTTP GET');
insert into nodelabels values ('3411505546397625415', 'startTime', '7');
insert into nodelabels values ('3411505546397625415', 'status.code', '0');
insert into nodelabels values ('3411505546397625415', 'serviceName', 'api-gateway');
insert into nodelabels values ('-5085903863730751513', 'operationName', 'HTTP GET');
insert into nodelabels values ('-5085903863730751513', 'startTime', '3');
insert into nodelabels values ('-5085903863730751513', 'status.code', '0');
insert into nodelabels values ('-5085903863730751513', 'serviceName', 'api-gateway');
insert into nodelabels values ('-470329223902096249', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-470329223902096249', 'startTime', '14');
insert into nodelabels values ('-470329223902096249', 'status.code', '0');
insert into nodelabels values ('-470329223902096249', 'serviceName', 'ratings');
insert into nodelabels values ('8753821272261613294', 'operationName', 'HTTP GET');
insert into nodelabels values ('8753821272261613294', 'startTime', '1');
insert into nodelabels values ('8753821272261613294', 'status.code', '0');
insert into nodelabels values ('8753821272261613294', 'serviceName', 'mobile-client');
insert into nodelabels values ('-1688162908087661456', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1688162908087661456', 'startTime', '13');
insert into nodelabels values ('-1688162908087661456', 'status.code', '0');
insert into nodelabels values ('-1688162908087661456', 'serviceName', 'api-gateway');
insert into nodelabels values ('-6883745531025885770', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-6883745531025885770', 'startTime', '10');
insert into nodelabels values ('-6883745531025885770', 'status.code', '1');
insert into nodelabels values ('-6883745531025885770', 'serviceName', 'user-recommendations');
insert into nodelabels values ('-7529392726712654634', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-7529392726712654634', 'startTime', '6');
insert into nodelabels values ('-7529392726712654634', 'status.code', '0');
insert into nodelabels values ('-7529392726712654634', 'serviceName', 'bookmarks');
insert into nodelabels values ('-2673105316197755624', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-2673105316197755624', 'startTime', '8');
insert into nodelabels values ('-2673105316197755624', 'status.code', '0');
insert into nodelabels values ('-2673105316197755624', 'serviceName', 'my-list');
insert into nodelabels values ('4777569515337797529', 'operationName', 'HTTP GET');
insert into nodelabels values ('4777569515337797529', 'startTime', '5');
insert into nodelabels values ('4777569515337797529', 'status.code', '0');
insert into nodelabels values ('4777569515337797529', 'serviceName', 'api-gateway');
insert into nodelabels values ('3050048092403036924', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('3050048092403036924', 'startTime', '0');
insert into nodelabels values ('3050048092403036924', 'status.code', '0');
insert into nodelabels values ('3050048092403036924', 'serviceName', 'mobile-client');
insert into nodelabels values ('8050271492309383037', 'operationName', '/users/<user_id>');
insert into nodelabels values ('8050271492309383037', 'startTime', '4');
insert into nodelabels values ('8050271492309383037', 'status.code', '0');
insert into nodelabels values ('8050271492309383037', 'serviceName', 'user-profile');
insert into nodelabels values ('-7550842900822491682', 'operationName', '/');
insert into nodelabels values ('-7550842900822491682', 'startTime', '12');
insert into nodelabels values ('-7550842900822491682', 'status.code', '0');
insert into nodelabels values ('-7550842900822491682', 'serviceName', 'global-recommendations');

