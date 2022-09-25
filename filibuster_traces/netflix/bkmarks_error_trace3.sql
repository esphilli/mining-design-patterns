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
                insert into edge values('-2213284717697690007', '-6543851546503424209');
insert into edge values('-2213284717697690007', '1890449511334503017');
insert into edge values('-2213284717697690007', '-6948107027282796778');
insert into edge values('4515384929397311385', '2851986715940457315');
insert into edge values('-1656297938833863075', '1577471895306365865');
insert into edge values('-6543851546503424209', '8254505239653733662');
insert into edge values('-9156967658684755554', '5976335572123705666');
insert into edge values('-1293445676728436860', '-456141720428270179');
insert into edge values('-2213284717697690007', '4515384929397311385');
insert into edge values('-2213284717697690007', '-248078659998681108');
insert into edge values('5976335572123705666', '-2213284717697690007');
insert into edge values('-6948107027282796778', '-2963550822782059665');
insert into edge values('-248078659998681108', '-3180709400031272956');
insert into edge values('-2213284717697690007', '-1656297938833863075');
insert into edge values('-2213284717697690007', '-1293445676728436860');
insert into edge values('1890449511334503017', '-3820834422362862323');
insert into nodelabels values ('5976335572123705666', 'operationName', 'HTTP GET');
insert into nodelabels values ('5976335572123705666', 'startTime', '1');
insert into nodelabels values ('5976335572123705666', 'status.code', '0');
insert into nodelabels values ('5976335572123705666', 'serviceName', 'mobile-client');
insert into nodelabels values ('2851986715940457315', 'operationName', '/users/<user_id>');
insert into nodelabels values ('2851986715940457315', 'startTime', '6');
insert into nodelabels values ('2851986715940457315', 'status.code', '1');
insert into nodelabels values ('2851986715940457315', 'serviceName', 'bookmarks');
insert into nodelabels values ('-9156967658684755554', 'operationName', '/netflix/homepage/users/<user_id>');
insert into nodelabels values ('-9156967658684755554', 'startTime', '0');
insert into nodelabels values ('-9156967658684755554', 'status.code', '0');
insert into nodelabels values ('-9156967658684755554', 'serviceName', 'mobile-client');
insert into nodelabels values ('-1293445676728436860', 'operationName', 'HTTP POST');
insert into nodelabels values ('-1293445676728436860', 'startTime', '7');
insert into nodelabels values ('-1293445676728436860', 'status.code', '0');
insert into nodelabels values ('-1293445676728436860', 'serviceName', 'api-gateway');
insert into nodelabels values ('-456141720428270179', 'operationName', '/');
insert into nodelabels values ('-456141720428270179', 'startTime', '8');
insert into nodelabels values ('-456141720428270179', 'status.code', '0');
insert into nodelabels values ('-456141720428270179', 'serviceName', 'telemetry');
insert into nodelabels values ('-3180709400031272956', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-3180709400031272956', 'startTime', '4');
insert into nodelabels values ('-3180709400031272956', 'status.code', '0');
insert into nodelabels values ('-3180709400031272956', 'serviceName', 'user-profile');
insert into nodelabels values ('-2213284717697690007', 'operationName', '/homepage/users/<user_id>');
insert into nodelabels values ('-2213284717697690007', 'startTime', '2');
insert into nodelabels values ('-2213284717697690007', 'status.code', '0');
insert into nodelabels values ('-2213284717697690007', 'serviceName', 'api-gateway');
insert into nodelabels values ('1890449511334503017', 'operationName', 'HTTP GET');
insert into nodelabels values ('1890449511334503017', 'startTime', '15');
insert into nodelabels values ('1890449511334503017', 'status.code', '0');
insert into nodelabels values ('1890449511334503017', 'serviceName', 'api-gateway');
insert into nodelabels values ('1577471895306365865', 'operationName', '/users/<user_id>');
insert into nodelabels values ('1577471895306365865', 'startTime', '12');
insert into nodelabels values ('1577471895306365865', 'status.code', '0');
insert into nodelabels values ('1577471895306365865', 'serviceName', 'my-list');
insert into nodelabels values ('-248078659998681108', 'operationName', 'HTTP GET');
insert into nodelabels values ('-248078659998681108', 'startTime', '3');
insert into nodelabels values ('-248078659998681108', 'status.code', '0');
insert into nodelabels values ('-248078659998681108', 'serviceName', 'api-gateway');
insert into nodelabels values ('-3820834422362862323', 'operationName', '/users/<user_id>');
insert into nodelabels values ('-3820834422362862323', 'startTime', '16');
insert into nodelabels values ('-3820834422362862323', 'status.code', '0');
insert into nodelabels values ('-3820834422362862323', 'serviceName', 'ratings');
insert into nodelabels values ('-6543851546503424209', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6543851546503424209', 'startTime', '13');
insert into nodelabels values ('-6543851546503424209', 'status.code', '0');
insert into nodelabels values ('-6543851546503424209', 'serviceName', 'api-gateway');
insert into nodelabels values ('-2963550822782059665', 'operationName', '/');
insert into nodelabels values ('-2963550822782059665', 'startTime', '10');
insert into nodelabels values ('-2963550822782059665', 'status.code', '0');
insert into nodelabels values ('-2963550822782059665', 'serviceName', 'trending');
insert into nodelabels values ('-6948107027282796778', 'operationName', 'HTTP GET');
insert into nodelabels values ('-6948107027282796778', 'startTime', '9');
insert into nodelabels values ('-6948107027282796778', 'status.code', '0');
insert into nodelabels values ('-6948107027282796778', 'serviceName', 'api-gateway');
insert into nodelabels values ('4515384929397311385', 'operationName', 'HTTP GET');
insert into nodelabels values ('4515384929397311385', 'startTime', '5');
insert into nodelabels values ('4515384929397311385', 'status.code', '1');
insert into nodelabels values ('4515384929397311385', 'serviceName', 'api-gateway');
insert into nodelabels values ('-1656297938833863075', 'operationName', 'HTTP GET');
insert into nodelabels values ('-1656297938833863075', 'startTime', '11');
insert into nodelabels values ('-1656297938833863075', 'status.code', '0');
insert into nodelabels values ('-1656297938833863075', 'serviceName', 'api-gateway');
insert into nodelabels values ('8254505239653733662', 'operationName', '/users/<user_id>');
insert into nodelabels values ('8254505239653733662', 'startTime', '14');
insert into nodelabels values ('8254505239653733662', 'status.code', '0');
insert into nodelabels values ('8254505239653733662', 'serviceName', 'user-recommendations');

