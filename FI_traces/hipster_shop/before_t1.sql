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
                insert into edge values('4191952244135300146', '-4825452554878529172');
insert into edge values('5084519566373682531', '-7355276878380013507');
insert into edge values('5084519566373682531', '-7529865371756113686');
insert into edge values('-6987149694351803946', '535814566679054450');
insert into edge values('8651010703219895888', '4191952244135300146');
insert into edge values('-7529865371756113686', '-1044988392628474174');
insert into edge values('-1044988392628474174', '8651010703219895888');
insert into edge values('5084519566373682531', '2174918059173145461');
insert into edge values('5084519566373682531', '-1858757700449363774');
insert into edge values('5084519566373682531', '-9163065401982316350');
insert into edge values('2174918059173145461', '-6987149694351803946');
insert into nodelabels values ('-1044988392628474174', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-1044988392628474174', 'startTime', '3');
insert into nodelabels values ('-1044988392628474174', 'status.code', '0');
insert into nodelabels values ('-1044988392628474174', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('5084519566373682531', 'operationName', 'Recv./');
insert into nodelabels values ('5084519566373682531', 'startTime', '0');
insert into nodelabels values ('5084519566373682531', 'status.code', '0');
insert into nodelabels values ('5084519566373682531', 'serviceName', 'frontend');
insert into nodelabels values ('-1858757700449363774', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-1858757700449363774', 'startTime', '8');
insert into nodelabels values ('-1858757700449363774', 'status.code', '0');
insert into nodelabels values ('-1858757700449363774', 'serviceName', 'frontend');
insert into nodelabels values ('-9163065401982316350', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('-9163065401982316350', 'startTime', '7');
insert into nodelabels values ('-9163065401982316350', 'status.code', '0');
insert into nodelabels values ('-9163065401982316350', 'serviceName', 'frontend');
insert into nodelabels values ('-7529865371756113686', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-7529865371756113686', 'startTime', '2');
insert into nodelabels values ('-7529865371756113686', 'status.code', '0');
insert into nodelabels values ('-7529865371756113686', 'serviceName', 'frontend');
insert into nodelabels values ('-4825452554878529172', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('-4825452554878529172', 'startTime', '6');
insert into nodelabels values ('-4825452554878529172', 'status.code', '-1');
insert into nodelabels values ('-4825452554878529172', 'serviceName', 'adservice');
insert into nodelabels values ('8651010703219895888', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('8651010703219895888', 'startTime', '4');
insert into nodelabels values ('8651010703219895888', 'status.code', '0');
insert into nodelabels values ('8651010703219895888', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('4191952244135300146', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('4191952244135300146', 'startTime', '5');
insert into nodelabels values ('4191952244135300146', 'status.code', '-1');
insert into nodelabels values ('4191952244135300146', 'serviceName', 'adservice');
insert into nodelabels values ('535814566679054450', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('535814566679054450', 'startTime', '11');
insert into nodelabels values ('535814566679054450', 'status.code', '-1');
insert into nodelabels values ('535814566679054450', 'serviceName', 'adservice');
insert into nodelabels values ('2174918059173145461', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('2174918059173145461', 'startTime', '9');
insert into nodelabels values ('2174918059173145461', 'status.code', '0');
insert into nodelabels values ('2174918059173145461', 'serviceName', 'frontend');
insert into nodelabels values ('-6987149694351803946', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('-6987149694351803946', 'startTime', '10');
insert into nodelabels values ('-6987149694351803946', 'status.code', '-1');
insert into nodelabels values ('-6987149694351803946', 'serviceName', 'adservice');
insert into nodelabels values ('-7355276878380013507', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-7355276878380013507', 'startTime', '1');
insert into nodelabels values ('-7355276878380013507', 'status.code', '0');
insert into nodelabels values ('-7355276878380013507', 'serviceName', 'frontend');

