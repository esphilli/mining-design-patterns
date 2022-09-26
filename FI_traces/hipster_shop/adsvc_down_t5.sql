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
                insert into edge values('-6516191707210009683', '-5517089052253480043');
insert into edge values('-6516191707210009683', '-7606305769864509291');
insert into edge values('-7345770695042831293', '9090846066213036234');
insert into edge values('-7606305769864509291', '1917247085054535942');
insert into edge values('-6516191707210009683', '-7345770695042831293');
insert into edge values('1917247085054535942', '-8213803661688660480');
insert into edge values('-6516191707210009683', '1236166120474498235');
insert into edge values('-6516191707210009683', '-5375061775864110180');
insert into edge values('-6516191707210009683', '-8777582238815334018');
insert into edge values('-6516191707210009683', '-5486804532266947316');
insert into nodelabels values ('-8213803661688660480', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-8213803661688660480', 'startTime', '4');
insert into nodelabels values ('-8213803661688660480', 'status.code', '2');
insert into nodelabels values ('-8213803661688660480', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-7345770695042831293', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-7345770695042831293', 'startTime', '8');
insert into nodelabels values ('-7345770695042831293', 'status.code', '0');
insert into nodelabels values ('-7345770695042831293', 'serviceName', 'frontend');
insert into nodelabels values ('1917247085054535942', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('1917247085054535942', 'startTime', '3');
insert into nodelabels values ('1917247085054535942', 'status.code', '0');
insert into nodelabels values ('1917247085054535942', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('9090846066213036234', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('9090846066213036234', 'startTime', '9');
insert into nodelabels values ('9090846066213036234', 'status.code', '0');
insert into nodelabels values ('9090846066213036234', 'serviceName', 'shippingservice');
insert into nodelabels values ('-5486804532266947316', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-5486804532266947316', 'startTime', '10');
insert into nodelabels values ('-5486804532266947316', 'status.code', '0');
insert into nodelabels values ('-5486804532266947316', 'serviceName', 'frontend');
insert into nodelabels values ('-6516191707210009683', 'operationName', 'Recv./');
insert into nodelabels values ('-6516191707210009683', 'startTime', '0');
insert into nodelabels values ('-6516191707210009683', 'status.code', '0');
insert into nodelabels values ('-6516191707210009683', 'serviceName', 'frontend');
insert into nodelabels values ('-7606305769864509291', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-7606305769864509291', 'startTime', '2');
insert into nodelabels values ('-7606305769864509291', 'status.code', '0');
insert into nodelabels values ('-7606305769864509291', 'serviceName', 'frontend');
insert into nodelabels values ('-5517089052253480043', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-5517089052253480043', 'startTime', '6');
insert into nodelabels values ('-5517089052253480043', 'status.code', '0');
insert into nodelabels values ('-5517089052253480043', 'serviceName', 'frontend');
insert into nodelabels values ('1236166120474498235', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('1236166120474498235', 'startTime', '5');
insert into nodelabels values ('1236166120474498235', 'status.code', '0');
insert into nodelabels values ('1236166120474498235', 'serviceName', 'frontend');
insert into nodelabels values ('-5375061775864110180', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-5375061775864110180', 'startTime', '7');
insert into nodelabels values ('-5375061775864110180', 'status.code', '2');
insert into nodelabels values ('-5375061775864110180', 'serviceName', 'frontend');
insert into nodelabels values ('-8777582238815334018', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-8777582238815334018', 'startTime', '1');
insert into nodelabels values ('-8777582238815334018', 'status.code', '0');
insert into nodelabels values ('-8777582238815334018', 'serviceName', 'frontend');

