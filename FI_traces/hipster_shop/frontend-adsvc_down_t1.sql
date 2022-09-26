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
                insert into edge values('-1141101428180611171', '5002614590972443388');
insert into edge values('-1141101428180611171', '-7040172301600018058');
insert into edge values('-8645463315509458788', '-1992522207428894607');
insert into edge values('-1141101428180611171', '-2823462290853184248');
insert into edge values('-1141101428180611171', '-8923731390349308800');
insert into edge values('-1141101428180611171', '1302529828937784183');
insert into edge values('-1992522207428894607', '-5727961886874926524');
insert into edge values('-1141101428180611171', '2747998355158606731');
insert into edge values('-1141101428180611171', '4845007122817244563');
insert into edge values('326792745734861350', '-8645463315509458788');
insert into edge values('7585590106976173352', '787924637460471246');
insert into edge values('-1141101428180611171', '-738958848304881623');
insert into edge values('-1141101428180611171', '-5764577145540521527');
insert into edge values('-1141101428180611171', '2916875704764356164');
insert into edge values('2747998355158606731', '326792745734861350');
insert into edge values('-1141101428180611171', '9129342397257566076');
insert into edge values('-1141101428180611171', '-427757804490599142');
insert into edge values('-1141101428180611171', '6274256484739363434');
insert into edge values('-1141101428180611171', '7585590106976173352');
insert into nodelabels values ('-8923731390349308800', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-8923731390349308800', 'startTime', '9');
insert into nodelabels values ('-8923731390349308800', 'status.code', '0');
insert into nodelabels values ('-8923731390349308800', 'serviceName', 'frontend');
insert into nodelabels values ('-2823462290853184248', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-2823462290853184248', 'startTime', '11');
insert into nodelabels values ('-2823462290853184248', 'status.code', '0');
insert into nodelabels values ('-2823462290853184248', 'serviceName', 'frontend');
insert into nodelabels values ('2747998355158606731', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('2747998355158606731', 'startTime', '2');
insert into nodelabels values ('2747998355158606731', 'status.code', '0');
insert into nodelabels values ('2747998355158606731', 'serviceName', 'frontend');
insert into nodelabels values ('4845007122817244563', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4845007122817244563', 'startTime', '15');
insert into nodelabels values ('4845007122817244563', 'status.code', '0');
insert into nodelabels values ('4845007122817244563', 'serviceName', 'frontend');
insert into nodelabels values ('-427757804490599142', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-427757804490599142', 'startTime', '13');
insert into nodelabels values ('-427757804490599142', 'status.code', '0');
insert into nodelabels values ('-427757804490599142', 'serviceName', 'frontend');
insert into nodelabels values ('-8645463315509458788', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-8645463315509458788', 'startTime', '4');
insert into nodelabels values ('-8645463315509458788', 'status.code', '0');
insert into nodelabels values ('-8645463315509458788', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-1141101428180611171', 'operationName', 'Recv./');
insert into nodelabels values ('-1141101428180611171', 'startTime', '0');
insert into nodelabels values ('-1141101428180611171', 'status.code', '0');
insert into nodelabels values ('-1141101428180611171', 'serviceName', 'frontend');
insert into nodelabels values ('326792745734861350', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('326792745734861350', 'startTime', '3');
insert into nodelabels values ('326792745734861350', 'status.code', '0');
insert into nodelabels values ('326792745734861350', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('7585590106976173352', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('7585590106976173352', 'startTime', '18');
insert into nodelabels values ('7585590106976173352', 'status.code', '2');
insert into nodelabels values ('7585590106976173352', 'serviceName', 'frontend');
insert into nodelabels values ('-738958848304881623', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-738958848304881623', 'startTime', '8');
insert into nodelabels values ('-738958848304881623', 'status.code', '0');
insert into nodelabels values ('-738958848304881623', 'serviceName', 'frontend');
insert into nodelabels values ('9129342397257566076', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('9129342397257566076', 'startTime', '16');
insert into nodelabels values ('9129342397257566076', 'status.code', '0');
insert into nodelabels values ('9129342397257566076', 'serviceName', 'frontend');
insert into nodelabels values ('-5727961886874926524', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('-5727961886874926524', 'startTime', '6');
insert into nodelabels values ('-5727961886874926524', 'status.code', '-1');
insert into nodelabels values ('-5727961886874926524', 'serviceName', 'adservice');
insert into nodelabels values ('2916875704764356164', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('2916875704764356164', 'startTime', '7');
insert into nodelabels values ('2916875704764356164', 'status.code', '0');
insert into nodelabels values ('2916875704764356164', 'serviceName', 'frontend');
insert into nodelabels values ('-5764577145540521527', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-5764577145540521527', 'startTime', '17');
insert into nodelabels values ('-5764577145540521527', 'status.code', '2');
insert into nodelabels values ('-5764577145540521527', 'serviceName', 'frontend');
insert into nodelabels values ('787924637460471246', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('787924637460471246', 'startTime', '19');
insert into nodelabels values ('787924637460471246', 'status.code', '2');
insert into nodelabels values ('787924637460471246', 'serviceName', 'shippingservice');
insert into nodelabels values ('6274256484739363434', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('6274256484739363434', 'startTime', '12');
insert into nodelabels values ('6274256484739363434', 'status.code', '0');
insert into nodelabels values ('6274256484739363434', 'serviceName', 'frontend');
insert into nodelabels values ('-1992522207428894607', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('-1992522207428894607', 'startTime', '5');
insert into nodelabels values ('-1992522207428894607', 'status.code', '-1');
insert into nodelabels values ('-1992522207428894607', 'serviceName', 'adservice');
insert into nodelabels values ('-7040172301600018058', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-7040172301600018058', 'startTime', '1');
insert into nodelabels values ('-7040172301600018058', 'status.code', '0');
insert into nodelabels values ('-7040172301600018058', 'serviceName', 'frontend');
insert into nodelabels values ('1302529828937784183', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('1302529828937784183', 'startTime', '10');
insert into nodelabels values ('1302529828937784183', 'status.code', '0');
insert into nodelabels values ('1302529828937784183', 'serviceName', 'frontend');
insert into nodelabels values ('5002614590972443388', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('5002614590972443388', 'startTime', '14');
insert into nodelabels values ('5002614590972443388', 'status.code', '0');
insert into nodelabels values ('5002614590972443388', 'serviceName', 'frontend');

