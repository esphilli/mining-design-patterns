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
                insert into edge values('4741206750907483387', '3449759118961335372');
insert into edge values('4741206750907483387', '-8409247216676818329');
insert into edge values('4741206750907483387', '-4524838204940931575');
insert into edge values('6456232757280154597', '4741206750907483387');
insert into edge values('4741206750907483387', '1390690374196482183');
insert into edge values('4741206750907483387', '-8232055234733486725');
insert into edge values('3449759118961335372', '1142128729453108452');
insert into edge values('-8409247216676818329', '8372012345257843690');
insert into edge values('-8232055234733486725', '-6591542919624561551');
insert into edge values('1390690374196482183', '242132390011113101');
insert into edge values('4741206750907483387', '-740456656075849944');
insert into edge values('5871192117516350812', '6456232757280154597');
insert into edge values('-4524838204940931575', '-8291230676357261830');
insert into edge values('-740456656075849944', '-1771775153856113001');
insert into nodelabels values ('1142128729453108452', 'operationName', '/');
insert into nodelabels values ('1142128729453108452', 'startTime', '12');
insert into nodelabels values ('1142128729453108452', 'status.code', '0');
insert into nodelabels values ('1142128729453108452', 'serviceName', 'global-recommendations');
insert into nodelabels values ('6456232757280154597', 'operationName', 'HTTP GET');
insert into nodelabels values ('6456232757280154597', 'startTime', '1');
insert into nodelabels values ('6456232757280154597', 'status.code', '0');
insert into nodelabels values ('6456232757280154597', 'serviceName', 'mobile-client');
insert into nodelabels values ('-8409247216676818329', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8409247216676818329', 'startTime', '9');
insert into nodelabels values ('-8409247216676818329', 'status.code', '1');
insert into nodelabels values ('-8409247216676818329', 'serviceName', 'api-gateway');
insert into nodelabels values ('1390690374196482183', 'operationName', 'HTTP GET');
insert into nodelabels values ('1390690374196482183', 'startTime', '3');
insert into nodelabels values ('1390690374196482183', 'status.code', '0');
insert into nodelabels values ('1390690374196482183', 'serviceName', 'api-gateway');
insert into nodelabels values ('-4524838204940931575', 'operationName', 'HTTP GET');
insert into nodelabels values ('-4524838204940931575', 'startTime', '13');
insert into nodelabels values ('-4524838204940931575', 'status.code', '0');
insert into nodelabels values ('-4524838204940931575', 'serviceName', 'api-gateway');
insert into nodelabels values ('8372012345257843690', 'operationName', '/users/<user_id>');
insert into nodelabels values ('8372012345257843690', 'startTime', '10');
insert into nodelabels values ('8372012345257843690', 'status.code', '1');
insert into nodelabels values ('8372012345257843690', 'serviceName', 'user-recommendations');
insert into nodelabels values ('-740456656075849944', 'operationName', 'HTTP GET');
insert into nodelabels values ('-740456656075849944', 'startTime', '5');
insert into nodelabels values ('-740456656075849944', 'status.code', '0');
insert into nodelabels values ('-740456656075849944', 'serviceName', 'api-gateway');
insert into nodelabels values ('3449759118961335372', 'operationName', 'HTTP GET');
insert into nodelabels values ('3449759118961335372', 'startTime', '11');
insert into nodelabels values ('3449759118961335372', 'status.code', '0');
insert into nodelabels values ('3449759118961335372', 'serviceName', 'api-gateway');
insert into nodelabels values ('242132390011113101', 'operationName', '/users/<user_id>');
insert into nodelabels values ('242132390011113101', 'startTime', '4');
insert into nodelabels values ('242132390011113101', 'status.code', '0');
insert into nodelabels values ('242132390011113101', 'serviceName', 'user-profile');
insert into nodelabels values ('-6591542919624561551', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-6591542919624561551', 'startTime', '8');
insert into nodelabels values ('-6591542919624561551', 'status.code', '0');
insert into nodelabels values ('-6591542919624561551', 'serviceName', 'my-list');
insert into nodelabels values ('-8232055234733486725', 'operationName', 'HTTP GET');
insert into nodelabels values ('-8232055234733486725', 'startTime', '7');
insert into nodelabels values ('-8232055234733486725', 'status.code', '0');
insert into nodelabels values ('-8232055234733486725', 'serviceName', 'api-gateway');
insert into nodelabels values ('-1771775153856113001', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-1771775153856113001', 'startTime', '6');
insert into nodelabels values ('-1771775153856113001', 'status.code', '0');
insert into nodelabels values ('-1771775153856113001', 'serviceName', 'bookmarks');
insert into nodelabels values ('-8291230676357261830', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-8291230676357261830', 'startTime', '14');
insert into nodelabels values ('-8291230676357261830', 'status.code', '0');
insert into nodelabels values ('-8291230676357261830', 'serviceName', 'ratings');
insert into nodelabels values ('4741206750907483387', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('4741206750907483387', 'startTime', '2');
insert into nodelabels values ('4741206750907483387', 'status.code', '0');
insert into nodelabels values ('4741206750907483387', 'serviceName', 'api-gateway');
insert into nodelabels values ('5871192117516350812', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('5871192117516350812', 'startTime', '0');
insert into nodelabels values ('5871192117516350812', 'status.code', '0');
insert into nodelabels values ('5871192117516350812', 'serviceName', 'mobile-client');

