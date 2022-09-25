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
                insert into edge values('712004979751178342', '532160135512900461');
insert into edge values('712004979751178342', '-939248912287719195');
insert into edge values('712004979751178342', '5863113379747280485');
insert into edge values('712004979751178342', '-6065120748396260195');
insert into edge values('5863113379747280485', '3897865955996469787');
insert into edge values('-939248912287719195', '5485142716990255438');
insert into edge values('-1489698929070649323', '787061313216219847');
insert into edge values('712004979751178342', '-1489698929070649323');
insert into edge values('2980571797050229987', '-4890654556092359261');
insert into edge values('532160135512900461', '-6340322848441320232');
insert into edge values('-4890654556092359261', '712004979751178342');
insert into edge values('5619363955842042702', '727877222821543471');
insert into edge values('712004979751178342', '5619363955842042702');
insert into nodelabels values ('2980571797050229987', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('2980571797050229987', 'startTime', '0');
insert into nodelabels values ('2980571797050229987', 'status.code', '0');
insert into nodelabels values ('2980571797050229987', 'serviceName', 'mobile-client');
insert into nodelabels values ('-4890654556092359261', 'operationName', 'HTTP GET');
insert into nodelabels values ('-4890654556092359261', 'startTime', '1');
insert into nodelabels values ('-4890654556092359261', 'status.code', '0');
insert into nodelabels values ('-4890654556092359261', 'serviceName', 'mobile-client');
insert into nodelabels values ('-939248912287719195', 'operationName', 'HTTP GET');
insert into nodelabels values ('-939248912287719195', 'startTime', '12');
insert into nodelabels values ('-939248912287719195', 'status.code', '0');
insert into nodelabels values ('-939248912287719195', 'serviceName', 'api-gateway');
insert into nodelabels values ('712004979751178342', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('712004979751178342', 'startTime', '2');
insert into nodelabels values ('712004979751178342', 'status.code', '0');
insert into nodelabels values ('712004979751178342', 'serviceName', 'api-gateway');
insert into nodelabels values ('5863113379747280485', 'operationName', 'HTTP GET');
insert into nodelabels values ('5863113379747280485', 'startTime', '7');
insert into nodelabels values ('5863113379747280485', 'status.code', '0');
insert into nodelabels values ('5863113379747280485', 'serviceName', 'api-gateway');
insert into nodelabels values ('787061313216219847', 'operationName', '/users/<user_id>');
insert into nodelabels values ('787061313216219847', 'startTime', '4');
insert into nodelabels values ('787061313216219847', 'status.code', '0');
insert into nodelabels values ('787061313216219847', 'serviceName', 'user-profile');
insert into nodelabels values ('532160135512900461', 'operationName', 'HTTP GET');
insert into nodelabels values ('532160135512900461', 'startTime', '10');
insert into nodelabels values ('532160135512900461', 'status.code', '0');
insert into nodelabels values ('532160135512900461', 'serviceName', 'api-gateway');
insert into nodelabels values ('5485142716990255438', 'operationName', '/users/<user_id>');
insert into nodelabels values ('5485142716990255438', 'startTime', '13');
insert into nodelabels values ('5485142716990255438', 'status.code', '0');
insert into nodelabels values ('5485142716990255438', 'serviceName', 'ratings');
insert into nodelabels values ('5619363955842042702', 'operationName', 'HTTP GET');
insert into nodelabels values ('5619363955842042702', 'startTime', '5');
insert into nodelabels values ('5619363955842042702', 'status.code', '0');
insert into nodelabels values ('5619363955842042702', 'serviceName', 'api-gateway');
insert into nodelabels values ('727877222821543471', 'operationName', '/users/<user_id>');
insert into nodelabels values ('727877222821543471', 'startTime', '6');
insert into nodelabels values ('727877222821543471', 'status.code', '0');
insert into nodelabels values ('727877222821543471', 'serviceName', 'bookmarks');
insert into nodelabels values ('-1489698929070649323', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1489698929070649323', 'startTime', '3');
insert into nodelabels values ('-1489698929070649323', 'status.code', '0');
insert into nodelabels values ('-1489698929070649323', 'serviceName', 'api-gateway');
insert into nodelabels values ('-6340322848441320232', 'operationName', '/');
insert into nodelabels values ('-6340322848441320232', 'startTime', '11');
insert into nodelabels values ('-6340322848441320232', 'status.code', '0');
insert into nodelabels values ('-6340322848441320232', 'serviceName', 'global-recommendations');
insert into nodelabels values ('3897865955996469787', 'operationName', '/users/<user_id>');
insert into nodelabels values ('3897865955996469787', 'startTime', '8');
insert into nodelabels values ('3897865955996469787', 'status.code', '0');
insert into nodelabels values ('3897865955996469787', 'serviceName', 'my-list');
insert into nodelabels values ('-6065120748396260195', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6065120748396260195', 'startTime', '9');
insert into nodelabels values ('-6065120748396260195', 'status.code', '1');
insert into nodelabels values ('-6065120748396260195', 'serviceName', 'api-gateway');

