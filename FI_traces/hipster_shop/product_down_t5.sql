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
                insert into edge values ('-7113710714545553603', '-4845713753487889846');
insert into edge values ('-7113710714545553603', '614726310317291509');
insert into nodelabels values ('614726310317291509', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('614726310317291509', 'startTime', '2');
insert into nodelabels values ('614726310317291509', 'status.code', '2');
insert into nodelabels values ('614726310317291509', 'serviceName', 'frontend');
insert into nodelabels values ('-4845713753487889846', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-4845713753487889846', 'startTime', '1');
insert into nodelabels values ('-4845713753487889846', 'status.code', '0');
insert into nodelabels values ('-4845713753487889846', 'serviceName', 'frontend');
insert into nodelabels values ('-7113710714545553603', 'operationName', 'Recv./');
insert into nodelabels values ('-7113710714545553603', 'startTime', '0');
insert into nodelabels values ('-7113710714545553603', 'status.code', '2');
insert into nodelabels values ('-7113710714545553603', 'serviceName', 'frontend');

