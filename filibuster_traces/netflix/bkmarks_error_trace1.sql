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
                insert into edge values('4175537453880110154', '-8618919996876134457');
insert into edge values('-3499225840741924760', '6608018917774270640');
insert into edge values('-2961609651308781306', '8012312641171792088');
insert into edge values('4117998746080615773', '-5414093601899165442');
insert into edge values('4175537453880110154', '-1526957776825580485');
insert into edge values('-5414093601899165442', '4175537453880110154');
insert into edge values('4175537453880110154', '-6311193016816366778');
insert into edge values('4175537453880110154', '-3499225840741924760');
insert into edge values('-8618919996876134457', '891974312657505796');
insert into edge values('4175537453880110154', '-5362316585305548495');
insert into edge values('5291737353405296375', '-2775095531041941044');
insert into edge values('-6311193016816366778', '3514220883515461561');
insert into edge values('-1526957776825580485', '8540654681288651772');
insert into edge values('4175537453880110154', '-2961609651308781306');
insert into edge values('-5362316585305548495', '7634209614095679662');
insert into edge values('4175537453880110154', '5291737353405296375');
insert into nodelabels values ('891974312657505796', 'operationName', '/users/<user_id>');
insert into nodelabels values ('891974312657505796', 'startTime', '6');
insert into nodelabels values ('891974312657505796', 'status.code', '1');
insert into nodelabels values ('891974312657505796', 'serviceName', 'bookmarks');
insert into nodelabels values ('-2961609651308781306', 'operationName', 'HTTP GET');
insert into nodelabels values ('-2961609651308781306', 'startTime', '11');
insert into nodelabels values ('-2961609651308781306', 'status.code', '0');
insert into nodelabels values ('-2961609651308781306', 'serviceName', 'api-gateway');
insert into nodelabels values ('-8618919996876134457', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8618919996876134457', 'startTime', '5');
insert into nodelabels values ('-8618919996876134457', 'status.code', '1');
insert into nodelabels values ('-8618919996876134457', 'serviceName', 'api-gateway');
insert into nodelabels values ('-3499225840741924760', 'operationName', 'HTTP GET');
insert into nodelabels values ('-3499225840741924760', 'startTime', '13');
insert into nodelabels values ('-3499225840741924760', 'status.code', '0');
insert into nodelabels values ('-3499225840741924760', 'serviceName', 'api-gateway');
insert into nodelabels values ('-6311193016816366778', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6311193016816366778', 'startTime', '15');
insert into nodelabels values ('-6311193016816366778', 'status.code', '0');
insert into nodelabels values ('-6311193016816366778', 'serviceName', 'api-gateway');
insert into nodelabels values ('4175537453880110154', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('4175537453880110154', 'startTime', '2');
insert into nodelabels values ('4175537453880110154', 'status.code', '0');
insert into nodelabels values ('4175537453880110154', 'serviceName', 'api-gateway');
insert into nodelabels values ('-2775095531041941044', 'operationName', '/');
insert into nodelabels values ('-2775095531041941044', 'startTime', '8');
insert into nodelabels values ('-2775095531041941044', 'status.code', '0');
insert into nodelabels values ('-2775095531041941044', 'serviceName', 'telemetry');
insert into nodelabels values ('7634209614095679662', 'operationName', '/users/<user_id>');
insert into nodelabels values ('7634209614095679662', 'startTime', '4');
insert into nodelabels values ('7634209614095679662', 'status.code', '0');
insert into nodelabels values ('7634209614095679662', 'serviceName', 'user-profile');
insert into nodelabels values ('6608018917774270640', 'operationName', '/users/<user_id>');
insert into nodelabels values ('6608018917774270640', 'startTime', '14');
insert into nodelabels values ('6608018917774270640', 'status.code', '0');
insert into nodelabels values ('6608018917774270640', 'serviceName', 'user-recommendations');
insert into nodelabels values ('-5362316585305548495', 'operationName', 'HTTP GET');
insert into nodelabels values ('-5362316585305548495', 'startTime', '3');
insert into nodelabels values ('-5362316585305548495', 'status.code', '0');
insert into nodelabels values ('-5362316585305548495', 'serviceName', 'api-gateway');
insert into nodelabels values ('5291737353405296375', 'operationName', 'HTTP POST');
insert into nodelabels values ('5291737353405296375', 'startTime', '7');
insert into nodelabels values ('5291737353405296375', 'status.code', '0');
insert into nodelabels values ('5291737353405296375', 'serviceName', 'api-gateway');
insert into nodelabels values ('8012312641171792088', 'operationName', '/users/<user_id>');
insert into nodelabels values ('8012312641171792088', 'startTime', '12');
insert into nodelabels values ('8012312641171792088', 'status.code', '0');
insert into nodelabels values ('8012312641171792088', 'serviceName', 'my-list');
insert into nodelabels values ('3514220883515461561', 'operationName', '/users/<user_id>');
insert into nodelabels values ('3514220883515461561', 'startTime', '16');
insert into nodelabels values ('3514220883515461561', 'status.code', '0');
insert into nodelabels values ('3514220883515461561', 'serviceName', 'ratings');
insert into nodelabels values ('-1526957776825580485', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1526957776825580485', 'startTime', '9');
insert into nodelabels values ('-1526957776825580485', 'status.code', '0');
insert into nodelabels values ('-1526957776825580485', 'serviceName', 'api-gateway');
insert into nodelabels values ('8540654681288651772', 'operationName', '/');
insert into nodelabels values ('8540654681288651772', 'startTime', '10');
insert into nodelabels values ('8540654681288651772', 'status.code', '0');
insert into nodelabels values ('8540654681288651772', 'serviceName', 'trending');
insert into nodelabels values ('4117998746080615773', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('4117998746080615773', 'startTime', '0');
insert into nodelabels values ('4117998746080615773', 'status.code', '0');
insert into nodelabels values ('4117998746080615773', 'serviceName', 'mobile-client');
insert into nodelabels values ('-5414093601899165442', 'operationName', 'HTTP GET');
insert into nodelabels values ('-5414093601899165442', 'startTime', '1');
insert into nodelabels values ('-5414093601899165442', 'status.code', '0');
insert into nodelabels values ('-5414093601899165442', 'serviceName', 'mobile-client');

