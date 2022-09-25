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
                insert into edge values ('-8671234102957669522', '-5558644536999947540');
insert into edge values ('3699112039865961165', '-4322669517935183677');
insert into edge values ('3699112039865961165', '6852729174920327339');
insert into edge values ('3699112039865961165', '3513214563433123679');
insert into edge values ('3513214563433123679', '-8671234102957669522');
insert into edge values ('-4116050148433565865', '-5134439669022084106');
insert into edge values ('3699112039865961165', '7164424570728406064');
insert into edge values ('-5134439669022084106', '4109315997553479663');
insert into edge values ('3699112039865961165', '-4116050148433565865');
insert into nodelabels values ('-4322669517935183677', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-4322669517935183677', 'startTime', '1');
insert into nodelabels values ('-4322669517935183677', 'status.code', '0');
insert into nodelabels values ('-4322669517935183677', 'serviceName', 'frontend');
insert into nodelabels values ('6852729174920327339', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('6852729174920327339', 'startTime', '5');
insert into nodelabels values ('6852729174920327339', 'status.code', '0');
insert into nodelabels values ('6852729174920327339', 'serviceName', 'frontend');
insert into nodelabels values ('-5558644536999947540', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-5558644536999947540', 'startTime', '4');
insert into nodelabels values ('-5558644536999947540', 'status.code', '2');
insert into nodelabels values ('-5558644536999947540', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('3699112039865961165', 'operationName', 'Recv./');
insert into nodelabels values ('3699112039865961165', 'startTime', '0');
insert into nodelabels values ('3699112039865961165', 'status.code', '0');
insert into nodelabels values ('3699112039865961165', 'serviceName', 'frontend');
insert into nodelabels values ('-8671234102957669522', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-8671234102957669522', 'startTime', '3');
insert into nodelabels values ('-8671234102957669522', 'status.code', '0');
insert into nodelabels values ('-8671234102957669522', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('4109315997553479663', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('4109315997553479663', 'startTime', '9');
insert into nodelabels values ('4109315997553479663', 'status.code', '-1');
insert into nodelabels values ('4109315997553479663', 'serviceName', 'adservice');
insert into nodelabels values ('7164424570728406064', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('7164424570728406064', 'startTime', '6');
insert into nodelabels values ('7164424570728406064', 'status.code', '0');
insert into nodelabels values ('7164424570728406064', 'serviceName', 'frontend');
insert into nodelabels values ('-5134439669022084106', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('-5134439669022084106', 'startTime', '8');
insert into nodelabels values ('-5134439669022084106', 'status.code', '-1');
insert into nodelabels values ('-5134439669022084106', 'serviceName', 'adservice');
insert into nodelabels values ('-4116050148433565865', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-4116050148433565865', 'startTime', '7');
insert into nodelabels values ('-4116050148433565865', 'status.code', '0');
insert into nodelabels values ('-4116050148433565865', 'serviceName', 'frontend');
insert into nodelabels values ('3513214563433123679', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('3513214563433123679', 'startTime', '2');
insert into nodelabels values ('3513214563433123679', 'status.code', '0');
insert into nodelabels values ('3513214563433123679', 'serviceName', 'frontend');

