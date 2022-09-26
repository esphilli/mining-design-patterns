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
                insert into edge values('8140931687958101195', '-3727659673254076366');
insert into edge values('8140931687958101195', '2768770036234704359');
insert into edge values('8140931687958101195', '5953334579947873263');
insert into edge values('8140931687958101195', '6581773868164907446');
insert into edge values('8140931687958101195', '2778369386917157267');
insert into edge values('8140931687958101195', '-3423520947764963837');
insert into edge values('8140931687958101195', '-3061946432642165155');
insert into edge values('8140931687958101195', '-6286628865964230905');
insert into edge values('8140931687958101195', '814321765750401382');
insert into edge values('814321765750401382', '3647878005865658747');
insert into edge values('8140931687958101195', '8805641846288797391');
insert into edge values('8140931687958101195', '6274043945205786416');
insert into edge values('8140931687958101195', '3092093145272270704');
insert into edge values('8140931687958101195', '-1562210752824381873');
insert into edge values('8140931687958101195', '-7901930063551233630');
insert into edge values('-3061946432642165155', '3342412539616827883');
insert into edge values('8140931687958101195', '8985440655312148668');
insert into edge values('3342412539616827883', '8005944839513377325');
insert into nodelabels values ('-3423520947764963837', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-3423520947764963837', 'startTime', '8');
insert into nodelabels values ('-3423520947764963837', 'status.code', '0');
insert into nodelabels values ('-3423520947764963837', 'serviceName', 'frontend');
insert into nodelabels values ('-6286628865964230905', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-6286628865964230905', 'startTime', '14');
insert into nodelabels values ('-6286628865964230905', 'status.code', '0');
insert into nodelabels values ('-6286628865964230905', 'serviceName', 'frontend');
insert into nodelabels values ('2778369386917157267', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('2778369386917157267', 'startTime', '11');
insert into nodelabels values ('2778369386917157267', 'status.code', '0');
insert into nodelabels values ('2778369386917157267', 'serviceName', 'frontend');
insert into nodelabels values ('-7901930063551233630', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-7901930063551233630', 'startTime', '18');
insert into nodelabels values ('-7901930063551233630', 'status.code', '0');
insert into nodelabels values ('-7901930063551233630', 'serviceName', 'frontend');
insert into nodelabels values ('8005944839513377325', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('8005944839513377325', 'startTime', '4');
insert into nodelabels values ('8005944839513377325', 'status.code', '2');
insert into nodelabels values ('8005944839513377325', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('6274043945205786416', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('6274043945205786416', 'startTime', '5');
insert into nodelabels values ('6274043945205786416', 'status.code', '0');
insert into nodelabels values ('6274043945205786416', 'serviceName', 'frontend');
insert into nodelabels values ('-3727659673254076366', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-3727659673254076366', 'startTime', '7');
insert into nodelabels values ('-3727659673254076366', 'status.code', '0');
insert into nodelabels values ('-3727659673254076366', 'serviceName', 'frontend');
insert into nodelabels values ('6581773868164907446', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('6581773868164907446', 'startTime', '12');
insert into nodelabels values ('6581773868164907446', 'status.code', '0');
insert into nodelabels values ('6581773868164907446', 'serviceName', 'frontend');
insert into nodelabels values ('8985440655312148668', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8985440655312148668', 'startTime', '10');
insert into nodelabels values ('8985440655312148668', 'status.code', '0');
insert into nodelabels values ('8985440655312148668', 'serviceName', 'frontend');
insert into nodelabels values ('8140931687958101195', 'operationName', 'Recv./');
insert into nodelabels values ('8140931687958101195', 'startTime', '0');
insert into nodelabels values ('8140931687958101195', 'status.code', '0');
insert into nodelabels values ('8140931687958101195', 'serviceName', 'frontend');
insert into nodelabels values ('8805641846288797391', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8805641846288797391', 'startTime', '9');
insert into nodelabels values ('8805641846288797391', 'status.code', '0');
insert into nodelabels values ('8805641846288797391', 'serviceName', 'frontend');
insert into nodelabels values ('-1562210752824381873', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-1562210752824381873', 'startTime', '15');
insert into nodelabels values ('-1562210752824381873', 'status.code', '2');
insert into nodelabels values ('-1562210752824381873', 'serviceName', 'frontend');
insert into nodelabels values ('-3061946432642165155', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-3061946432642165155', 'startTime', '2');
insert into nodelabels values ('-3061946432642165155', 'status.code', '0');
insert into nodelabels values ('-3061946432642165155', 'serviceName', 'frontend');
insert into nodelabels values ('814321765750401382', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('814321765750401382', 'startTime', '16');
insert into nodelabels values ('814321765750401382', 'status.code', '0');
insert into nodelabels values ('814321765750401382', 'serviceName', 'frontend');
insert into nodelabels values ('2768770036234704359', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('2768770036234704359', 'startTime', '6');
insert into nodelabels values ('2768770036234704359', 'status.code', '0');
insert into nodelabels values ('2768770036234704359', 'serviceName', 'frontend');
insert into nodelabels values ('3342412539616827883', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('3342412539616827883', 'startTime', '3');
insert into nodelabels values ('3342412539616827883', 'status.code', '0');
insert into nodelabels values ('3342412539616827883', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('5953334579947873263', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('5953334579947873263', 'startTime', '13');
insert into nodelabels values ('5953334579947873263', 'status.code', '0');
insert into nodelabels values ('5953334579947873263', 'serviceName', 'frontend');
insert into nodelabels values ('3092093145272270704', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('3092093145272270704', 'startTime', '1');
insert into nodelabels values ('3092093145272270704', 'status.code', '0');
insert into nodelabels values ('3092093145272270704', 'serviceName', 'frontend');
insert into nodelabels values ('3647878005865658747', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('3647878005865658747', 'startTime', '17');
insert into nodelabels values ('3647878005865658747', 'status.code', '0');
insert into nodelabels values ('3647878005865658747', 'serviceName', 'shippingservice');

