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
                insert into edge values('8112354846451069547', '-5161278620944648577');
insert into edge values('7354521672440184769', '7573830133959925840');
insert into edge values('5192514501991787617', '-3751148331568070554');
insert into edge values('7354521672440184769', '5192514501991787617');
insert into edge values('7354521672440184769', '8112354846451069547');
insert into edge values('7354521672440184769', '2686126536255243287');
insert into edge values('-5161278620944648577', '4822797150663186124');
insert into edge values('7354521672440184769', '5967099594052197306');
insert into edge values('7354521672440184769', '-1622688355107515428');
insert into edge values('7354521672440184769', '1341360397568874179');
insert into nodelabels values ('7354521672440184769', 'operationName', 'Recv./');
insert into nodelabels values ('7354521672440184769', 'startTime', '0');
insert into nodelabels values ('7354521672440184769', 'status.code', '0');
insert into nodelabels values ('7354521672440184769', 'serviceName', 'frontend');
insert into nodelabels values ('5192514501991787617', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('5192514501991787617', 'startTime', '8');
insert into nodelabels values ('5192514501991787617', 'status.code', '0');
insert into nodelabels values ('5192514501991787617', 'serviceName', 'frontend');
insert into nodelabels values ('1341360397568874179', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('1341360397568874179', 'startTime', '1');
insert into nodelabels values ('1341360397568874179', 'status.code', '0');
insert into nodelabels values ('1341360397568874179', 'serviceName', 'frontend');
insert into nodelabels values ('-3751148331568070554', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-3751148331568070554', 'startTime', '9');
insert into nodelabels values ('-3751148331568070554', 'status.code', '0');
insert into nodelabels values ('-3751148331568070554', 'serviceName', 'shippingservice');
insert into nodelabels values ('8112354846451069547', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('8112354846451069547', 'startTime', '2');
insert into nodelabels values ('8112354846451069547', 'status.code', '0');
insert into nodelabels values ('8112354846451069547', 'serviceName', 'frontend');
insert into nodelabels values ('4822797150663186124', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('4822797150663186124', 'startTime', '4');
insert into nodelabels values ('4822797150663186124', 'status.code', '2');
insert into nodelabels values ('4822797150663186124', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('7573830133959925840', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('7573830133959925840', 'startTime', '6');
insert into nodelabels values ('7573830133959925840', 'status.code', '0');
insert into nodelabels values ('7573830133959925840', 'serviceName', 'frontend');
insert into nodelabels values ('2686126536255243287', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('2686126536255243287', 'startTime', '10');
insert into nodelabels values ('2686126536255243287', 'status.code', '0');
insert into nodelabels values ('2686126536255243287', 'serviceName', 'frontend');
insert into nodelabels values ('5967099594052197306', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('5967099594052197306', 'startTime', '5');
insert into nodelabels values ('5967099594052197306', 'status.code', '0');
insert into nodelabels values ('5967099594052197306', 'serviceName', 'frontend');
insert into nodelabels values ('-1622688355107515428', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-1622688355107515428', 'startTime', '7');
insert into nodelabels values ('-1622688355107515428', 'status.code', '2');
insert into nodelabels values ('-1622688355107515428', 'serviceName', 'frontend');
insert into nodelabels values ('-5161278620944648577', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-5161278620944648577', 'startTime', '3');
insert into nodelabels values ('-5161278620944648577', 'status.code', '0');
insert into nodelabels values ('-5161278620944648577', 'serviceName', 'productcatalogservice');

