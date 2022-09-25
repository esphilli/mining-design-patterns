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
                insert into edge values ('2392013272734506863', '-5176394867223893996');
insert into edge values ('2392013272734506863', '-7754769281889568864');
insert into nodelabels values ('-7754769281889568864', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-7754769281889568864', 'startTime', '1');
insert into nodelabels values ('-7754769281889568864', 'status.code', '0');
insert into nodelabels values ('-7754769281889568864', 'serviceName', 'frontend');
insert into nodelabels values ('-5176394867223893996', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-5176394867223893996', 'startTime', '2');
insert into nodelabels values ('-5176394867223893996', 'status.code', '2');
insert into nodelabels values ('-5176394867223893996', 'serviceName', 'frontend');
insert into nodelabels values ('2392013272734506863', 'operationName', 'Recv./');
insert into nodelabels values ('2392013272734506863', 'startTime', '0');
insert into nodelabels values ('2392013272734506863', 'status.code', '2');
insert into nodelabels values ('2392013272734506863', 'serviceName', 'frontend');

