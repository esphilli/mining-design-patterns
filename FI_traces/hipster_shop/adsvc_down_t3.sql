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
                insert into edge values('-2301388277641504746', '-2614599845145134665');
insert into edge values('1642874956508650371', '-326612810225661162');
insert into edge values('8719998201516378188', '-1358688715188358231');
insert into edge values('8719998201516378188', '4662380542476840739');
insert into edge values('8719998201516378188', '2737951210873770893');
insert into edge values('8719998201516378188', '-3798338817301292307');
insert into edge values('1604309754115388355', '-2301388277641504746');
insert into edge values('8719998201516378188', '1604309754115388355');
insert into edge values('8719998201516378188', '7841503071062269878');
insert into edge values('8719998201516378188', '1642874956508650371');
insert into nodelabels values ('-2614599845145134665', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-2614599845145134665', 'startTime', '4');
insert into nodelabels values ('-2614599845145134665', 'status.code', '2');
insert into nodelabels values ('-2614599845145134665', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('1642874956508650371', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('1642874956508650371', 'startTime', '8');
insert into nodelabels values ('1642874956508650371', 'status.code', '0');
insert into nodelabels values ('1642874956508650371', 'serviceName', 'frontend');
insert into nodelabels values ('4662380542476840739', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('4662380542476840739', 'startTime', '7');
insert into nodelabels values ('4662380542476840739', 'status.code', '2');
insert into nodelabels values ('4662380542476840739', 'serviceName', 'frontend');
insert into nodelabels values ('1604309754115388355', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('1604309754115388355', 'startTime', '2');
insert into nodelabels values ('1604309754115388355', 'status.code', '0');
insert into nodelabels values ('1604309754115388355', 'serviceName', 'frontend');
insert into nodelabels values ('-1358688715188358231', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-1358688715188358231', 'startTime', '10');
insert into nodelabels values ('-1358688715188358231', 'status.code', '0');
insert into nodelabels values ('-1358688715188358231', 'serviceName', 'frontend');
insert into nodelabels values ('8719998201516378188', 'operationName', 'Recv./');
insert into nodelabels values ('8719998201516378188', 'startTime', '0');
insert into nodelabels values ('8719998201516378188', 'status.code', '0');
insert into nodelabels values ('8719998201516378188', 'serviceName', 'frontend');
insert into nodelabels values ('2737951210873770893', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('2737951210873770893', 'startTime', '5');
insert into nodelabels values ('2737951210873770893', 'status.code', '0');
insert into nodelabels values ('2737951210873770893', 'serviceName', 'frontend');
insert into nodelabels values ('-3798338817301292307', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-3798338817301292307', 'startTime', '1');
insert into nodelabels values ('-3798338817301292307', 'status.code', '0');
insert into nodelabels values ('-3798338817301292307', 'serviceName', 'frontend');
insert into nodelabels values ('-326612810225661162', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-326612810225661162', 'startTime', '9');
insert into nodelabels values ('-326612810225661162', 'status.code', '0');
insert into nodelabels values ('-326612810225661162', 'serviceName', 'shippingservice');
insert into nodelabels values ('-2301388277641504746', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-2301388277641504746', 'startTime', '3');
insert into nodelabels values ('-2301388277641504746', 'status.code', '0');
insert into nodelabels values ('-2301388277641504746', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('7841503071062269878', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('7841503071062269878', 'startTime', '6');
insert into nodelabels values ('7841503071062269878', 'status.code', '0');
insert into nodelabels values ('7841503071062269878', 'serviceName', 'frontend');

