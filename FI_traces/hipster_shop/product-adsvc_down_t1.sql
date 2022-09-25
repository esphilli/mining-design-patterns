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
                insert into edge values ('5237816510111731237', '4903199772608524575');
insert into edge values ('6687493989064775900', '8818279819265842657');
insert into edge values ('5237816510111731237', '8986731527282066464');
insert into edge values ('8818279819265842657', '5339298159575479043');
insert into edge values ('5127430252827756819', '8470098912564859494');
insert into edge values ('5237816510111731237', '-26336113194031677');
insert into edge values ('-26336113194031677', '5127430252827756819');
insert into edge values ('5237816510111731237', '6687493989064775900');
insert into edge values ('5237816510111731237', '-4380796962489273990');
insert into nodelabels values ('8986731527282066464', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('8986731527282066464', 'startTime', '5');
insert into nodelabels values ('8986731527282066464', 'status.code', '0');
insert into nodelabels values ('8986731527282066464', 'serviceName', 'frontend');
insert into nodelabels values ('8818279819265842657', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('8818279819265842657', 'startTime', '3');
insert into nodelabels values ('8818279819265842657', 'status.code', '0');
insert into nodelabels values ('8818279819265842657', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('5339298159575479043', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('5339298159575479043', 'startTime', '4');
insert into nodelabels values ('5339298159575479043', 'status.code', '2');
insert into nodelabels values ('5339298159575479043', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-26336113194031677', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-26336113194031677', 'startTime', '7');
insert into nodelabels values ('-26336113194031677', 'status.code', '0');
insert into nodelabels values ('-26336113194031677', 'serviceName', 'frontend');
insert into nodelabels values ('5237816510111731237', 'operationName', 'Recv./');
insert into nodelabels values ('5237816510111731237', 'startTime', '0');
insert into nodelabels values ('5237816510111731237', 'status.code', '0');
insert into nodelabels values ('5237816510111731237', 'serviceName', 'frontend');
insert into nodelabels values ('8470098912564859494', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('8470098912564859494', 'startTime', '9');
insert into nodelabels values ('8470098912564859494', 'status.code', '-1');
insert into nodelabels values ('8470098912564859494', 'serviceName', 'adservice');
insert into nodelabels values ('5127430252827756819', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('5127430252827756819', 'startTime', '8');
insert into nodelabels values ('5127430252827756819', 'status.code', '-1');
insert into nodelabels values ('5127430252827756819', 'serviceName', 'adservice');
insert into nodelabels values ('-4380796962489273990', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-4380796962489273990', 'startTime', '1');
insert into nodelabels values ('-4380796962489273990', 'status.code', '0');
insert into nodelabels values ('-4380796962489273990', 'serviceName', 'frontend');
insert into nodelabels values ('6687493989064775900', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('6687493989064775900', 'startTime', '2');
insert into nodelabels values ('6687493989064775900', 'status.code', '0');
insert into nodelabels values ('6687493989064775900', 'serviceName', 'frontend');
insert into nodelabels values ('4903199772608524575', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4903199772608524575', 'startTime', '6');
insert into nodelabels values ('4903199772608524575', 'status.code', '0');
insert into nodelabels values ('4903199772608524575', 'serviceName', 'frontend');

