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
                insert into edge values ('-1061968648166973474', '9092327553640044316');
insert into edge values ('-6123014586239623766', '8837080505436781919');
insert into edge values ('-1061968648166973474', '-1161000702386772123');
insert into edge values ('9092327553640044316', '-299063513926348980');
insert into edge values ('-1061968648166973474', '-4875039279590218600');
insert into edge values ('-299063513926348980', '-6970174362083756050');
insert into edge values ('8837080505436781919', '5150576225288083507');
insert into edge values ('-1061968648166973474', '4995458313983720234');
insert into edge values ('-1061968648166973474', '-6123014586239623766');
insert into nodelabels values ('-1161000702386772123', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-1161000702386772123', 'startTime', '6');
insert into nodelabels values ('-1161000702386772123', 'status.code', '0');
insert into nodelabels values ('-1161000702386772123', 'serviceName', 'frontend');
insert into nodelabels values ('-6123014586239623766', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-6123014586239623766', 'startTime', '2');
insert into nodelabels values ('-6123014586239623766', 'status.code', '0');
insert into nodelabels values ('-6123014586239623766', 'serviceName', 'frontend');
insert into nodelabels values ('4995458313983720234', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('4995458313983720234', 'startTime', '5');
insert into nodelabels values ('4995458313983720234', 'status.code', '0');
insert into nodelabels values ('4995458313983720234', 'serviceName', 'frontend');
insert into nodelabels values ('-299063513926348980', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('-299063513926348980', 'startTime', '8');
insert into nodelabels values ('-299063513926348980', 'status.code', '-1');
insert into nodelabels values ('-299063513926348980', 'serviceName', 'adservice');
insert into nodelabels values ('-6970174362083756050', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('-6970174362083756050', 'startTime', '9');
insert into nodelabels values ('-6970174362083756050', 'status.code', '-1');
insert into nodelabels values ('-6970174362083756050', 'serviceName', 'adservice');
insert into nodelabels values ('5150576225288083507', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('5150576225288083507', 'startTime', '4');
insert into nodelabels values ('5150576225288083507', 'status.code', '2');
insert into nodelabels values ('5150576225288083507', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-4875039279590218600', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-4875039279590218600', 'startTime', '1');
insert into nodelabels values ('-4875039279590218600', 'status.code', '0');
insert into nodelabels values ('-4875039279590218600', 'serviceName', 'frontend');
insert into nodelabels values ('9092327553640044316', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('9092327553640044316', 'startTime', '7');
insert into nodelabels values ('9092327553640044316', 'status.code', '0');
insert into nodelabels values ('9092327553640044316', 'serviceName', 'frontend');
insert into nodelabels values ('-1061968648166973474', 'operationName', 'Recv./');
insert into nodelabels values ('-1061968648166973474', 'startTime', '0');
insert into nodelabels values ('-1061968648166973474', 'status.code', '0');
insert into nodelabels values ('-1061968648166973474', 'serviceName', 'frontend');
insert into nodelabels values ('8837080505436781919', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('8837080505436781919', 'startTime', '3');
insert into nodelabels values ('8837080505436781919', 'status.code', '0');
insert into nodelabels values ('8837080505436781919', 'serviceName', 'productcatalogservice');

