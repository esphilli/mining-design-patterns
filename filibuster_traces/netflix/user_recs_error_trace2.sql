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
                insert into edge values('4884345972574977621', '4672428675783459632');
insert into edge values('3410824971406610005', '6926313137824628811');
insert into edge values('-1999498493741702258', '8915071687555657977');
insert into edge values('5012566282418965788', '3410824971406610005');
insert into edge values('5012566282418965788', '1254526772520254547');
insert into edge values('5012566282418965788', '1169539411570955519');
insert into edge values('1169539411570955519', '3476225679734612505');
insert into edge values('1254526772520254547', '201368655206511328');
insert into edge values('5012566282418965788', '-1999498493741702258');
insert into edge values('4672428675783459632', '5012566282418965788');
insert into edge values('1001714129691398342', '7889373950650973647');
insert into edge values('5012566282418965788', '1001714129691398342');
insert into edge values('-577203619943112917', '8593902649656974240');
insert into edge values('5012566282418965788', '-577203619943112917');
insert into nodelabels values ('201368655206511328', 'operationName', '/');
insert into nodelabels values ('201368655206511328', 'startTime', '12');
insert into nodelabels values ('201368655206511328', 'status.code', '0');
insert into nodelabels values ('201368655206511328', 'serviceName', 'global-recommendations');
insert into nodelabels values ('8593902649656974240', 'operationName', '/users/<user_id>');
insert into nodelabels values ('8593902649656974240', 'startTime', '4');
insert into nodelabels values ('8593902649656974240', 'status.code', '0');
insert into nodelabels values ('8593902649656974240', 'serviceName', 'user-profile');
insert into nodelabels values ('1001714129691398342', 'operationName', 'HTTP GET');
insert into nodelabels values ('1001714129691398342', 'startTime', '9');
insert into nodelabels values ('1001714129691398342', 'status.code', '1');
insert into nodelabels values ('1001714129691398342', 'serviceName', 'api-gateway');
insert into nodelabels values ('6926313137824628811', 'operationName', '/users/<user_id>');
insert into nodelabels values ('6926313137824628811', 'startTime', '14');
insert into nodelabels values ('6926313137824628811', 'status.code', '0');
insert into nodelabels values ('6926313137824628811', 'serviceName', 'ratings');
insert into nodelabels values ('-577203619943112917', 'operationName', 'HTTP GET');
insert into nodelabels values ('-577203619943112917', 'startTime', '3');
insert into nodelabels values ('-577203619943112917', 'status.code', '0');
insert into nodelabels values ('-577203619943112917', 'serviceName', 'api-gateway');
insert into nodelabels values ('-1999498493741702258', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1999498493741702258', 'startTime', '7');
insert into nodelabels values ('-1999498493741702258', 'status.code', '0');
insert into nodelabels values ('-1999498493741702258', 'serviceName', 'api-gateway');
insert into nodelabels values ('3476225679734612505', 'operationName', '/users/<user_id>');
insert into nodelabels values ('3476225679734612505', 'startTime', '6');
insert into nodelabels values ('3476225679734612505', 'status.code', '0');
insert into nodelabels values ('3476225679734612505', 'serviceName', 'bookmarks');
insert into nodelabels values ('4672428675783459632', 'operationName', 'HTTP GET');
insert into nodelabels values ('4672428675783459632', 'startTime', '1');
insert into nodelabels values ('4672428675783459632', 'status.code', '0');
insert into nodelabels values ('4672428675783459632', 'serviceName', 'mobile-client');
insert into nodelabels values ('7889373950650973647', 'operationName', '/users/<user_id>');
insert into nodelabels values ('7889373950650973647', 'startTime', '10');
insert into nodelabels values ('7889373950650973647', 'status.code', '1');
insert into nodelabels values ('7889373950650973647', 'serviceName', 'user-recommendations');
insert into nodelabels values ('1254526772520254547', 'operationName', 'HTTP GET');
insert into nodelabels values ('1254526772520254547', 'startTime', '11');
insert into nodelabels values ('1254526772520254547', 'status.code', '0');
insert into nodelabels values ('1254526772520254547', 'serviceName', 'api-gateway');
insert into nodelabels values ('3410824971406610005', 'operationName', 'HTTP GET');
insert into nodelabels values ('3410824971406610005', 'startTime', '13');
insert into nodelabels values ('3410824971406610005', 'status.code', '0');
insert into nodelabels values ('3410824971406610005', 'serviceName', 'api-gateway');
insert into nodelabels values ('4884345972574977621', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('4884345972574977621', 'startTime', '0');
insert into nodelabels values ('4884345972574977621', 'status.code', '0');
insert into nodelabels values ('4884345972574977621', 'serviceName', 'mobile-client');
insert into nodelabels values ('8915071687555657977', 'operationName', '/users/<user_id>');
insert into nodelabels values ('8915071687555657977', 'startTime', '8');
insert into nodelabels values ('8915071687555657977', 'status.code', '0');
insert into nodelabels values ('8915071687555657977', 'serviceName', 'my-list');
insert into nodelabels values ('5012566282418965788', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('5012566282418965788', 'startTime', '2');
insert into nodelabels values ('5012566282418965788', 'status.code', '0');
insert into nodelabels values ('5012566282418965788', 'serviceName', 'api-gateway');
insert into nodelabels values ('1169539411570955519', 'operationName', 'HTTP GET');
insert into nodelabels values ('1169539411570955519', 'startTime', '5');
insert into nodelabels values ('1169539411570955519', 'status.code', '0');
insert into nodelabels values ('1169539411570955519', 'serviceName', 'api-gateway');

