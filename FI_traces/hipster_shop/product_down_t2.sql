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
                insert into edge values ('7316806565439973376', '-4037337779402900371');
insert into edge values ('7316806565439973376', '-949928117242146488');
insert into nodelabels values ('7316806565439973376', 'operationName', 'Recv./');
insert into nodelabels values ('7316806565439973376', 'startTime', '0');
insert into nodelabels values ('7316806565439973376', 'status.code', '2');
insert into nodelabels values ('7316806565439973376', 'serviceName', 'frontend');
insert into nodelabels values ('-949928117242146488', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-949928117242146488', 'startTime', '2');
insert into nodelabels values ('-949928117242146488', 'status.code', '2');
insert into nodelabels values ('-949928117242146488', 'serviceName', 'frontend');
insert into nodelabels values ('-4037337779402900371', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-4037337779402900371', 'startTime', '1');
insert into nodelabels values ('-4037337779402900371', 'status.code', '0');
insert into nodelabels values ('-4037337779402900371', 'serviceName', 'frontend');

