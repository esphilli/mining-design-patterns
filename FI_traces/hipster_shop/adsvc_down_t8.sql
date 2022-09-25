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
                insert into edge values ('465891042580384668', '8048170585898974154');
insert into edge values ('7833519080970942500', '-6582282276537488314');
insert into edge values ('7833519080970942500', '7099247053759681379');
insert into edge values ('7833519080970942500', '5182552633999396326');
insert into edge values ('7833519080970942500', '1252033122158217071');
insert into edge values ('7833519080970942500', '-1427720050879462453');
insert into edge values ('7833519080970942500', '3381789558096593015');
insert into edge values ('7833519080970942500', '-409902369135173831');
insert into edge values ('7833519080970942500', '8084614013516117935');
insert into edge values ('8048170585898974154', '7377013003904996159');
insert into edge values ('7833519080970942500', '7694438111956651614');
insert into edge values ('7694438111956651614', '3252035757969586957');
insert into edge values ('7833519080970942500', '6841297982553995078');
insert into edge values ('7833519080970942500', '2184713437977808287');
insert into edge values ('7833519080970942500', '-3645674535853293234');
insert into edge values ('7833519080970942500', '465891042580384668');
insert into edge values ('7833519080970942500', '-4308215484418415141');
insert into edge values ('7833519080970942500', '6219245322355631346');
insert into nodelabels values ('3252035757969586957', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('3252035757969586957', 'startTime', '17');
insert into nodelabels values ('3252035757969586957', 'status.code', '0');
insert into nodelabels values ('3252035757969586957', 'serviceName', 'shippingservice');
insert into nodelabels values ('465891042580384668', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('465891042580384668', 'startTime', '2');
insert into nodelabels values ('465891042580384668', 'status.code', '0');
insert into nodelabels values ('465891042580384668', 'serviceName', 'frontend');
insert into nodelabels values ('2184713437977808287', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('2184713437977808287', 'startTime', '18');
insert into nodelabels values ('2184713437977808287', 'status.code', '0');
insert into nodelabels values ('2184713437977808287', 'serviceName', 'frontend');
insert into nodelabels values ('7833519080970942500', 'operationName', 'Recv./');
insert into nodelabels values ('7833519080970942500', 'startTime', '0');
insert into nodelabels values ('7833519080970942500', 'status.code', '0');
insert into nodelabels values ('7833519080970942500', 'serviceName', 'frontend');
insert into nodelabels values ('8084614013516117935', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('8084614013516117935', 'startTime', '15');
insert into nodelabels values ('8084614013516117935', 'status.code', '2');
insert into nodelabels values ('8084614013516117935', 'serviceName', 'frontend');
insert into nodelabels values ('-409902369135173831', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-409902369135173831', 'startTime', '11');
insert into nodelabels values ('-409902369135173831', 'status.code', '0');
insert into nodelabels values ('-409902369135173831', 'serviceName', 'frontend');
insert into nodelabels values ('7377013003904996159', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('7377013003904996159', 'startTime', '4');
insert into nodelabels values ('7377013003904996159', 'status.code', '2');
insert into nodelabels values ('7377013003904996159', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-6582282276537488314', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-6582282276537488314', 'startTime', '1');
insert into nodelabels values ('-6582282276537488314', 'status.code', '0');
insert into nodelabels values ('-6582282276537488314', 'serviceName', 'frontend');
insert into nodelabels values ('6841297982553995078', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('6841297982553995078', 'startTime', '10');
insert into nodelabels values ('6841297982553995078', 'status.code', '0');
insert into nodelabels values ('6841297982553995078', 'serviceName', 'frontend');
insert into nodelabels values ('8048170585898974154', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('8048170585898974154', 'startTime', '3');
insert into nodelabels values ('8048170585898974154', 'status.code', '0');
insert into nodelabels values ('8048170585898974154', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-1427720050879462453', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-1427720050879462453', 'startTime', '7');
insert into nodelabels values ('-1427720050879462453', 'status.code', '0');
insert into nodelabels values ('-1427720050879462453', 'serviceName', 'frontend');
insert into nodelabels values ('-3645674535853293234', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-3645674535853293234', 'startTime', '14');
insert into nodelabels values ('-3645674535853293234', 'status.code', '0');
insert into nodelabels values ('-3645674535853293234', 'serviceName', 'frontend');
insert into nodelabels values ('-4308215484418415141', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-4308215484418415141', 'startTime', '8');
insert into nodelabels values ('-4308215484418415141', 'status.code', '0');
insert into nodelabels values ('-4308215484418415141', 'serviceName', 'frontend');
insert into nodelabels values ('7694438111956651614', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('7694438111956651614', 'startTime', '16');
insert into nodelabels values ('7694438111956651614', 'status.code', '0');
insert into nodelabels values ('7694438111956651614', 'serviceName', 'frontend');
insert into nodelabels values ('7099247053759681379', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('7099247053759681379', 'startTime', '12');
insert into nodelabels values ('7099247053759681379', 'status.code', '0');
insert into nodelabels values ('7099247053759681379', 'serviceName', 'frontend');
insert into nodelabels values ('5182552633999396326', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('5182552633999396326', 'startTime', '6');
insert into nodelabels values ('5182552633999396326', 'status.code', '0');
insert into nodelabels values ('5182552633999396326', 'serviceName', 'frontend');
insert into nodelabels values ('1252033122158217071', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('1252033122158217071', 'startTime', '13');
insert into nodelabels values ('1252033122158217071', 'status.code', '0');
insert into nodelabels values ('1252033122158217071', 'serviceName', 'frontend');
insert into nodelabels values ('6219245322355631346', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('6219245322355631346', 'startTime', '5');
insert into nodelabels values ('6219245322355631346', 'status.code', '0');
insert into nodelabels values ('6219245322355631346', 'serviceName', 'frontend');
insert into nodelabels values ('3381789558096593015', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('3381789558096593015', 'startTime', '9');
insert into nodelabels values ('3381789558096593015', 'status.code', '0');
insert into nodelabels values ('3381789558096593015', 'serviceName', 'frontend');

