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
                insert into edge values('2333096899330852258', '-7723203506131550916');
insert into edge values('2333096899330852258', '-2634891824801034377');
insert into edge values('2333096899330852258', '6370577341166450833');
insert into edge values('2333096899330852258', '7770261117368787536');
insert into edge values('2333096899330852258', '7468767394826758318');
insert into edge values('2333096899330852258', '-2751815602529734905');
insert into edge values('-6328724635875111000', '-8601116549912176977');
insert into edge values('2333096899330852258', '7627180496868394404');
insert into edge values('2333096899330852258', '-3325430749623985680');
insert into edge values('2333096899330852258', '-2092292636705808884');
insert into edge values('2333096899330852258', '-3511910563119150959');
insert into edge values('-2092292636705808884', '1046548442159036600');
insert into edge values('-8601116549912176977', '-458060351497905913');
insert into edge values('2333096899330852258', '3697550022308206592');
insert into edge values('2333096899330852258', '-6328724635875111000');
insert into edge values('2333096899330852258', '-2345969624897797855');
insert into edge values('2333096899330852258', '-6222435469958231878');
insert into edge values('2333096899330852258', '-8367650341900691689');
insert into nodelabels values ('3697550022308206592', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('3697550022308206592', 'startTime', '14');
insert into nodelabels values ('3697550022308206592', 'status.code', '0');
insert into nodelabels values ('3697550022308206592', 'serviceName', 'frontend');
insert into nodelabels values ('-2751815602529734905', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-2751815602529734905', 'startTime', '15');
insert into nodelabels values ('-2751815602529734905', 'status.code', '2');
insert into nodelabels values ('-2751815602529734905', 'serviceName', 'frontend');
insert into nodelabels values ('-458060351497905913', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-458060351497905913', 'startTime', '4');
insert into nodelabels values ('-458060351497905913', 'status.code', '2');
insert into nodelabels values ('-458060351497905913', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-2092292636705808884', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-2092292636705808884', 'startTime', '16');
insert into nodelabels values ('-2092292636705808884', 'status.code', '0');
insert into nodelabels values ('-2092292636705808884', 'serviceName', 'frontend');
insert into nodelabels values ('6370577341166450833', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('6370577341166450833', 'startTime', '5');
insert into nodelabels values ('6370577341166450833', 'status.code', '0');
insert into nodelabels values ('6370577341166450833', 'serviceName', 'frontend');
insert into nodelabels values ('-3511910563119150959', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-3511910563119150959', 'startTime', '12');
insert into nodelabels values ('-3511910563119150959', 'status.code', '0');
insert into nodelabels values ('-3511910563119150959', 'serviceName', 'frontend');
insert into nodelabels values ('-8367650341900691689', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-8367650341900691689', 'startTime', '10');
insert into nodelabels values ('-8367650341900691689', 'status.code', '0');
insert into nodelabels values ('-8367650341900691689', 'serviceName', 'frontend');
insert into nodelabels values ('-2345969624897797855', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-2345969624897797855', 'startTime', '18');
insert into nodelabels values ('-2345969624897797855', 'status.code', '0');
insert into nodelabels values ('-2345969624897797855', 'serviceName', 'frontend');
insert into nodelabels values ('2333096899330852258', 'operationName', 'Recv./');
insert into nodelabels values ('2333096899330852258', 'startTime', '0');
insert into nodelabels values ('2333096899330852258', 'status.code', '0');
insert into nodelabels values ('2333096899330852258', 'serviceName', 'frontend');
insert into nodelabels values ('7627180496868394404', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('7627180496868394404', 'startTime', '6');
insert into nodelabels values ('7627180496868394404', 'status.code', '0');
insert into nodelabels values ('7627180496868394404', 'serviceName', 'frontend');
insert into nodelabels values ('-6328724635875111000', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-6328724635875111000', 'startTime', '2');
insert into nodelabels values ('-6328724635875111000', 'status.code', '0');
insert into nodelabels values ('-6328724635875111000', 'serviceName', 'frontend');
insert into nodelabels values ('7468767394826758318', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('7468767394826758318', 'startTime', '11');
insert into nodelabels values ('7468767394826758318', 'status.code', '0');
insert into nodelabels values ('7468767394826758318', 'serviceName', 'frontend');
insert into nodelabels values ('-8601116549912176977', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-8601116549912176977', 'startTime', '3');
insert into nodelabels values ('-8601116549912176977', 'status.code', '0');
insert into nodelabels values ('-8601116549912176977', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('1046548442159036600', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('1046548442159036600', 'startTime', '17');
insert into nodelabels values ('1046548442159036600', 'status.code', '0');
insert into nodelabels values ('1046548442159036600', 'serviceName', 'shippingservice');
insert into nodelabels values ('-6222435469958231878', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-6222435469958231878', 'startTime', '1');
insert into nodelabels values ('-6222435469958231878', 'status.code', '0');
insert into nodelabels values ('-6222435469958231878', 'serviceName', 'frontend');
insert into nodelabels values ('-7723203506131550916', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-7723203506131550916', 'startTime', '8');
insert into nodelabels values ('-7723203506131550916', 'status.code', '0');
insert into nodelabels values ('-7723203506131550916', 'serviceName', 'frontend');
insert into nodelabels values ('7770261117368787536', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('7770261117368787536', 'startTime', '9');
insert into nodelabels values ('7770261117368787536', 'status.code', '0');
insert into nodelabels values ('7770261117368787536', 'serviceName', 'frontend');
insert into nodelabels values ('-3325430749623985680', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-3325430749623985680', 'startTime', '13');
insert into nodelabels values ('-3325430749623985680', 'status.code', '0');
insert into nodelabels values ('-3325430749623985680', 'serviceName', 'frontend');
insert into nodelabels values ('-2634891824801034377', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-2634891824801034377', 'startTime', '7');
insert into nodelabels values ('-2634891824801034377', 'status.code', '0');
insert into nodelabels values ('-2634891824801034377', 'serviceName', 'frontend');

