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
                insert into edge values ('-7886871674138792576', '-3943745778549133416');
insert into edge values ('-7886871674138792576', '-5496290910887900724');
insert into edge values ('-7886871674138792576', '2835148406945076523');
insert into edge values ('-7886871674138792576', '8869608278054694090');
insert into edge values ('-7802313452906518349', '-5188024184281519736');
insert into edge values ('2835148406945076523', '-7802313452906518349');
insert into edge values ('-7886871674138792576', '-5870871130672464168');
insert into edge values ('-7886871674138792576', '-7267888664378154288');
insert into edge values ('-7886871674138792576', '1457735550649517680');
insert into edge values ('-7886871674138792576', '-7938577678882748530');
insert into edge values ('-7886871674138792576', '8734884766732349178');
insert into edge values ('-2821033519722636157', '-765738374935244153');
insert into edge values ('-7886871674138792576', '5445123086461061778');
insert into edge values ('-7886871674138792576', '8226068997733315277');
insert into edge values ('-7886871674138792576', '371833132497510211');
insert into edge values ('-7886871674138792576', '278952571890609060');
insert into edge values ('-7886871674138792576', '-3576737067366366164');
insert into edge values ('-7886871674138792576', '-2821033519722636157');
insert into nodelabels values ('-7886871674138792576', 'operationName', 'Recv./');
insert into nodelabels values ('-7886871674138792576', 'startTime', '0');
insert into nodelabels values ('-7886871674138792576', 'status.code', '0');
insert into nodelabels values ('-7886871674138792576', 'serviceName', 'frontend');
insert into nodelabels values ('-2821033519722636157', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-2821033519722636157', 'startTime', '16');
insert into nodelabels values ('-2821033519722636157', 'status.code', '0');
insert into nodelabels values ('-2821033519722636157', 'serviceName', 'frontend');
insert into nodelabels values ('-765738374935244153', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-765738374935244153', 'startTime', '17');
insert into nodelabels values ('-765738374935244153', 'status.code', '0');
insert into nodelabels values ('-765738374935244153', 'serviceName', 'shippingservice');
insert into nodelabels values ('-5188024184281519736', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-5188024184281519736', 'startTime', '4');
insert into nodelabels values ('-5188024184281519736', 'status.code', '2');
insert into nodelabels values ('-5188024184281519736', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-7938577678882748530', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-7938577678882748530', 'startTime', '6');
insert into nodelabels values ('-7938577678882748530', 'status.code', '0');
insert into nodelabels values ('-7938577678882748530', 'serviceName', 'frontend');
insert into nodelabels values ('5445123086461061778', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('5445123086461061778', 'startTime', '18');
insert into nodelabels values ('5445123086461061778', 'status.code', '0');
insert into nodelabels values ('5445123086461061778', 'serviceName', 'frontend');
insert into nodelabels values ('-3943745778549133416', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-3943745778549133416', 'startTime', '11');
insert into nodelabels values ('-3943745778549133416', 'status.code', '0');
insert into nodelabels values ('-3943745778549133416', 'serviceName', 'frontend');
insert into nodelabels values ('278952571890609060', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('278952571890609060', 'startTime', '1');
insert into nodelabels values ('278952571890609060', 'status.code', '0');
insert into nodelabels values ('278952571890609060', 'serviceName', 'frontend');
insert into nodelabels values ('2835148406945076523', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('2835148406945076523', 'startTime', '2');
insert into nodelabels values ('2835148406945076523', 'status.code', '0');
insert into nodelabels values ('2835148406945076523', 'serviceName', 'frontend');
insert into nodelabels values ('-3576737067366366164', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-3576737067366366164', 'startTime', '13');
insert into nodelabels values ('-3576737067366366164', 'status.code', '0');
insert into nodelabels values ('-3576737067366366164', 'serviceName', 'frontend');
insert into nodelabels values ('-7802313452906518349', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-7802313452906518349', 'startTime', '3');
insert into nodelabels values ('-7802313452906518349', 'status.code', '0');
insert into nodelabels values ('-7802313452906518349', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('371833132497510211', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('371833132497510211', 'startTime', '10');
insert into nodelabels values ('371833132497510211', 'status.code', '0');
insert into nodelabels values ('371833132497510211', 'serviceName', 'frontend');
insert into nodelabels values ('8869608278054694090', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8869608278054694090', 'startTime', '8');
insert into nodelabels values ('8869608278054694090', 'status.code', '0');
insert into nodelabels values ('8869608278054694090', 'serviceName', 'frontend');
insert into nodelabels values ('-5496290910887900724', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('-5496290910887900724', 'startTime', '5');
insert into nodelabels values ('-5496290910887900724', 'status.code', '0');
insert into nodelabels values ('-5496290910887900724', 'serviceName', 'frontend');
insert into nodelabels values ('8226068997733315277', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8226068997733315277', 'startTime', '7');
insert into nodelabels values ('8226068997733315277', 'status.code', '0');
insert into nodelabels values ('8226068997733315277', 'serviceName', 'frontend');
insert into nodelabels values ('-7267888664378154288', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-7267888664378154288', 'startTime', '14');
insert into nodelabels values ('-7267888664378154288', 'status.code', '0');
insert into nodelabels values ('-7267888664378154288', 'serviceName', 'frontend');
insert into nodelabels values ('-5870871130672464168', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-5870871130672464168', 'startTime', '9');
insert into nodelabels values ('-5870871130672464168', 'status.code', '0');
insert into nodelabels values ('-5870871130672464168', 'serviceName', 'frontend');
insert into nodelabels values ('1457735550649517680', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('1457735550649517680', 'startTime', '15');
insert into nodelabels values ('1457735550649517680', 'status.code', '2');
insert into nodelabels values ('1457735550649517680', 'serviceName', 'frontend');
insert into nodelabels values ('8734884766732349178', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8734884766732349178', 'startTime', '12');
insert into nodelabels values ('8734884766732349178', 'status.code', '0');
insert into nodelabels values ('8734884766732349178', 'serviceName', 'frontend');

