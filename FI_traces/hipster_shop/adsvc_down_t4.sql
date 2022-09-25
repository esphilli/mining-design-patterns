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
                insert into edge values ('1886204462601237785', '6967937723226844653');
insert into edge values ('2741696521987469052', '-5299575488220613744');
insert into edge values ('2741696521987469052', '-1455293478460777780');
insert into edge values ('2741696521987469052', '1886204462601237785');
insert into edge values ('-3053815465533155159', '1538795323829523502');
insert into edge values ('2741696521987469052', '8031505947409955492');
insert into edge values ('1538795323829523502', '-9187763092149062366');
insert into edge values ('2741696521987469052', '-4743050718136303737');
insert into edge values ('2741696521987469052', '-1380988490131328811');
insert into edge values ('2741696521987469052', '-3053815465533155159');
insert into nodelabels values ('-9187763092149062366', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-9187763092149062366', 'startTime', '4');
insert into nodelabels values ('-9187763092149062366', 'status.code', '2');
insert into nodelabels values ('-9187763092149062366', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('8031505947409955492', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8031505947409955492', 'startTime', '10');
insert into nodelabels values ('8031505947409955492', 'status.code', '0');
insert into nodelabels values ('8031505947409955492', 'serviceName', 'frontend');
insert into nodelabels values ('-4743050718136303737', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-4743050718136303737', 'startTime', '7');
insert into nodelabels values ('-4743050718136303737', 'status.code', '2');
insert into nodelabels values ('-4743050718136303737', 'serviceName', 'frontend');
insert into nodelabels values ('-3053815465533155159', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-3053815465533155159', 'startTime', '2');
insert into nodelabels values ('-3053815465533155159', 'status.code', '0');
insert into nodelabels values ('-3053815465533155159', 'serviceName', 'frontend');
insert into nodelabels values ('-1455293478460777780', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-1455293478460777780', 'startTime', '1');
insert into nodelabels values ('-1455293478460777780', 'status.code', '0');
insert into nodelabels values ('-1455293478460777780', 'serviceName', 'frontend');
insert into nodelabels values ('6967937723226844653', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('6967937723226844653', 'startTime', '9');
insert into nodelabels values ('6967937723226844653', 'status.code', '0');
insert into nodelabels values ('6967937723226844653', 'serviceName', 'shippingservice');
insert into nodelabels values ('1538795323829523502', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('1538795323829523502', 'startTime', '3');
insert into nodelabels values ('1538795323829523502', 'status.code', '0');
insert into nodelabels values ('1538795323829523502', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-5299575488220613744', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-5299575488220613744', 'startTime', '6');
insert into nodelabels values ('-5299575488220613744', 'status.code', '0');
insert into nodelabels values ('-5299575488220613744', 'serviceName', 'frontend');
insert into nodelabels values ('-1380988490131328811', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('-1380988490131328811', 'startTime', '5');
insert into nodelabels values ('-1380988490131328811', 'status.code', '0');
insert into nodelabels values ('-1380988490131328811', 'serviceName', 'frontend');
insert into nodelabels values ('1886204462601237785', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('1886204462601237785', 'startTime', '8');
insert into nodelabels values ('1886204462601237785', 'status.code', '0');
insert into nodelabels values ('1886204462601237785', 'serviceName', 'frontend');
insert into nodelabels values ('2741696521987469052', 'operationName', 'Recv./');
insert into nodelabels values ('2741696521987469052', 'startTime', '0');
insert into nodelabels values ('2741696521987469052', 'status.code', '0');
insert into nodelabels values ('2741696521987469052', 'serviceName', 'frontend');

