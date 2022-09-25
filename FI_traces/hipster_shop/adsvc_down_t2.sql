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
                insert into edge values ('-650853846781525691', '-3271126903984659589');
insert into edge values ('-650853846781525691', '4903356815152281558');
insert into edge values ('-650853846781525691', '-864064536374636042');
insert into edge values ('8610136333177846398', '4575865430831829392');
insert into edge values ('-650853846781525691', '-5761353032922253126');
insert into edge values ('-650853846781525691', '8643858287498734754');
insert into edge values ('-5761353032922253126', '8610136333177846398');
insert into edge values ('-650853846781525691', '4693744798640892872');
insert into edge values ('-650853846781525691', '-1009650618443426116');
insert into edge values ('-864064536374636042', '5003018050288907148');
insert into nodelabels values ('8643858287498734754', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('8643858287498734754', 'startTime', '7');
insert into nodelabels values ('8643858287498734754', 'status.code', '2');
insert into nodelabels values ('8643858287498734754', 'serviceName', 'frontend');
insert into nodelabels values ('-650853846781525691', 'operationName', 'Recv./');
insert into nodelabels values ('-650853846781525691', 'startTime', '0');
insert into nodelabels values ('-650853846781525691', 'status.code', '0');
insert into nodelabels values ('-650853846781525691', 'serviceName', 'frontend');
insert into nodelabels values ('4693744798640892872', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4693744798640892872', 'startTime', '10');
insert into nodelabels values ('4693744798640892872', 'status.code', '0');
insert into nodelabels values ('4693744798640892872', 'serviceName', 'frontend');
insert into nodelabels values ('5003018050288907148', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('5003018050288907148', 'startTime', '9');
insert into nodelabels values ('5003018050288907148', 'status.code', '0');
insert into nodelabels values ('5003018050288907148', 'serviceName', 'shippingservice');
insert into nodelabels values ('4575865430831829392', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('4575865430831829392', 'startTime', '4');
insert into nodelabels values ('4575865430831829392', 'status.code', '2');
insert into nodelabels values ('4575865430831829392', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-864064536374636042', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-864064536374636042', 'startTime', '8');
insert into nodelabels values ('-864064536374636042', 'status.code', '0');
insert into nodelabels values ('-864064536374636042', 'serviceName', 'frontend');
insert into nodelabels values ('4903356815152281558', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4903356815152281558', 'startTime', '6');
insert into nodelabels values ('4903356815152281558', 'status.code', '0');
insert into nodelabels values ('4903356815152281558', 'serviceName', 'frontend');
insert into nodelabels values ('-5761353032922253126', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-5761353032922253126', 'startTime', '2');
insert into nodelabels values ('-5761353032922253126', 'status.code', '0');
insert into nodelabels values ('-5761353032922253126', 'serviceName', 'frontend');
insert into nodelabels values ('-3271126903984659589', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('-3271126903984659589', 'startTime', '5');
insert into nodelabels values ('-3271126903984659589', 'status.code', '0');
insert into nodelabels values ('-3271126903984659589', 'serviceName', 'frontend');
insert into nodelabels values ('-1009650618443426116', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-1009650618443426116', 'startTime', '1');
insert into nodelabels values ('-1009650618443426116', 'status.code', '0');
insert into nodelabels values ('-1009650618443426116', 'serviceName', 'frontend');
insert into nodelabels values ('8610136333177846398', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('8610136333177846398', 'startTime', '3');
insert into nodelabels values ('8610136333177846398', 'status.code', '0');
insert into nodelabels values ('8610136333177846398', 'serviceName', 'productcatalogservice');

