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
                insert into edge values ('2854320968335492932', '-353214054255199832');
insert into edge values ('2854320968335492932', '4940502672822400255');
insert into edge values ('5113914697925138546', '8973665321078040302');
insert into edge values ('2854320968335492932', '-8546465758177338502');
insert into edge values ('2854320968335492932', '899992105114486802');
insert into edge values ('8973665321078040302', '-1264058279421168530');
insert into edge values ('2854320968335492932', '-6088270853797822477');
insert into edge values ('4940502672822400255', '-8647825563508746599');
insert into edge values ('2854320968335492932', '5113914697925138546');
insert into edge values ('2854320968335492932', '-5464451844158318903');
insert into nodelabels values ('2854320968335492932', 'operationName', 'Recv./');
insert into nodelabels values ('2854320968335492932', 'startTime', '0');
insert into nodelabels values ('2854320968335492932', 'status.code', '0');
insert into nodelabels values ('2854320968335492932', 'serviceName', 'frontend');
insert into nodelabels values ('-353214054255199832', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('-353214054255199832', 'startTime', '5');
insert into nodelabels values ('-353214054255199832', 'status.code', '0');
insert into nodelabels values ('-353214054255199832', 'serviceName', 'frontend');
insert into nodelabels values ('-5464451844158318903', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-5464451844158318903', 'startTime', '10');
insert into nodelabels values ('-5464451844158318903', 'status.code', '0');
insert into nodelabels values ('-5464451844158318903', 'serviceName', 'frontend');
insert into nodelabels values ('8973665321078040302', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('8973665321078040302', 'startTime', '3');
insert into nodelabels values ('8973665321078040302', 'status.code', '0');
insert into nodelabels values ('8973665321078040302', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-1264058279421168530', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-1264058279421168530', 'startTime', '4');
insert into nodelabels values ('-1264058279421168530', 'status.code', '2');
insert into nodelabels values ('-1264058279421168530', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('5113914697925138546', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('5113914697925138546', 'startTime', '2');
insert into nodelabels values ('5113914697925138546', 'status.code', '0');
insert into nodelabels values ('5113914697925138546', 'serviceName', 'frontend');
insert into nodelabels values ('899992105114486802', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('899992105114486802', 'startTime', '7');
insert into nodelabels values ('899992105114486802', 'status.code', '2');
insert into nodelabels values ('899992105114486802', 'serviceName', 'frontend');
insert into nodelabels values ('-6088270853797822477', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-6088270853797822477', 'startTime', '1');
insert into nodelabels values ('-6088270853797822477', 'status.code', '0');
insert into nodelabels values ('-6088270853797822477', 'serviceName', 'frontend');
insert into nodelabels values ('-8647825563508746599', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-8647825563508746599', 'startTime', '9');
insert into nodelabels values ('-8647825563508746599', 'status.code', '0');
insert into nodelabels values ('-8647825563508746599', 'serviceName', 'shippingservice');
insert into nodelabels values ('-8546465758177338502', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-8546465758177338502', 'startTime', '6');
insert into nodelabels values ('-8546465758177338502', 'status.code', '0');
insert into nodelabels values ('-8546465758177338502', 'serviceName', 'frontend');
insert into nodelabels values ('4940502672822400255', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('4940502672822400255', 'startTime', '8');
insert into nodelabels values ('4940502672822400255', 'status.code', '0');
insert into nodelabels values ('4940502672822400255', 'serviceName', 'frontend');

