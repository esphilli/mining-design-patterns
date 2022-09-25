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
                insert into edge values ('-4689199373405957013', '-3020074999149949373');
insert into edge values ('-4689199373405957013', '-2905902438421192110');
insert into nodelabels values ('-3020074999149949373', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-3020074999149949373', 'startTime', '2');
insert into nodelabels values ('-3020074999149949373', 'status.code', '2');
insert into nodelabels values ('-3020074999149949373', 'serviceName', 'frontend');
insert into nodelabels values ('-4689199373405957013', 'operationName', 'Recv./');
insert into nodelabels values ('-4689199373405957013', 'startTime', '0');
insert into nodelabels values ('-4689199373405957013', 'status.code', '2');
insert into nodelabels values ('-4689199373405957013', 'serviceName', 'frontend');
insert into nodelabels values ('-2905902438421192110', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-2905902438421192110', 'startTime', '1');
insert into nodelabels values ('-2905902438421192110', 'status.code', '0');
insert into nodelabels values ('-2905902438421192110', 'serviceName', 'frontend');

