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
                insert into edge values ('-2130207030830524779', '732863252458841759');
insert into edge values ('-2130207030830524779', '-2414144517692317596');
insert into edge values ('-2130207030830524779', '-4456499923107142714');
insert into edge values ('-2130207030830524779', '8611226685245310916');
insert into edge values ('-2130207030830524779', '1852693960200407370');
insert into edge values ('-2130207030830524779', '-3731480526491651300');
insert into edge values ('-5613382416609227770', '2575458771544571581');
insert into edge values ('-2130207030830524779', '-55230314787862');
insert into edge values ('-2130207030830524779', '7956519209127035271');
insert into edge values ('-2130207030830524779', '5550192315537915195');
insert into edge values ('-2130207030830524779', '2387877729097615068');
insert into edge values ('-4456499923107142714', '-9064415280947801446');
insert into edge values ('-2130207030830524779', '-5888963321588913187');
insert into edge values ('2387877729097615068', '-5613382416609227770');
insert into edge values ('-2130207030830524779', '-5449501472939612856');
insert into edge values ('-2130207030830524779', '2549692598276518490');
insert into edge values ('-2130207030830524779', '-2666103655705305890');
insert into edge values ('-2130207030830524779', '-6179843920251814788');
insert into nodelabels values ('-5613382416609227770', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-5613382416609227770', 'startTime', '3');
insert into nodelabels values ('-5613382416609227770', 'status.code', '0');
insert into nodelabels values ('-5613382416609227770', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('7956519209127035271', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('7956519209127035271', 'startTime', '8');
insert into nodelabels values ('7956519209127035271', 'status.code', '0');
insert into nodelabels values ('7956519209127035271', 'serviceName', 'frontend');
insert into nodelabels values ('-2130207030830524779', 'operationName', 'Recv./');
insert into nodelabels values ('-2130207030830524779', 'startTime', '0');
insert into nodelabels values ('-2130207030830524779', 'status.code', '0');
insert into nodelabels values ('-2130207030830524779', 'serviceName', 'frontend');
insert into nodelabels values ('-9064415280947801446', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-9064415280947801446', 'startTime', '17');
insert into nodelabels values ('-9064415280947801446', 'status.code', '0');
insert into nodelabels values ('-9064415280947801446', 'serviceName', 'shippingservice');
insert into nodelabels values ('-3731480526491651300', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-3731480526491651300', 'startTime', '12');
insert into nodelabels values ('-3731480526491651300', 'status.code', '0');
insert into nodelabels values ('-3731480526491651300', 'serviceName', 'frontend');
insert into nodelabels values ('732863252458841759', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('732863252458841759', 'startTime', '5');
insert into nodelabels values ('732863252458841759', 'status.code', '0');
insert into nodelabels values ('732863252458841759', 'serviceName', 'frontend');
insert into nodelabels values ('5550192315537915195', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('5550192315537915195', 'startTime', '9');
insert into nodelabels values ('5550192315537915195', 'status.code', '0');
insert into nodelabels values ('5550192315537915195', 'serviceName', 'frontend');
insert into nodelabels values ('2575458771544571581', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('2575458771544571581', 'startTime', '4');
insert into nodelabels values ('2575458771544571581', 'status.code', '2');
insert into nodelabels values ('2575458771544571581', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('8611226685245310916', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8611226685245310916', 'startTime', '11');
insert into nodelabels values ('8611226685245310916', 'status.code', '0');
insert into nodelabels values ('8611226685245310916', 'serviceName', 'frontend');
insert into nodelabels values ('-4456499923107142714', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-4456499923107142714', 'startTime', '16');
insert into nodelabels values ('-4456499923107142714', 'status.code', '0');
insert into nodelabels values ('-4456499923107142714', 'serviceName', 'frontend');
insert into nodelabels values ('-5449501472939612856', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-5449501472939612856', 'startTime', '15');
insert into nodelabels values ('-5449501472939612856', 'status.code', '2');
insert into nodelabels values ('-5449501472939612856', 'serviceName', 'frontend');
insert into nodelabels values ('1852693960200407370', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('1852693960200407370', 'startTime', '13');
insert into nodelabels values ('1852693960200407370', 'status.code', '0');
insert into nodelabels values ('1852693960200407370', 'serviceName', 'frontend');
insert into nodelabels values ('2549692598276518490', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('2549692598276518490', 'startTime', '1');
insert into nodelabels values ('2549692598276518490', 'status.code', '0');
insert into nodelabels values ('2549692598276518490', 'serviceName', 'frontend');
insert into nodelabels values ('2387877729097615068', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('2387877729097615068', 'startTime', '2');
insert into nodelabels values ('2387877729097615068', 'status.code', '0');
insert into nodelabels values ('2387877729097615068', 'serviceName', 'frontend');
insert into nodelabels values ('-5888963321588913187', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-5888963321588913187', 'startTime', '10');
insert into nodelabels values ('-5888963321588913187', 'status.code', '0');
insert into nodelabels values ('-5888963321588913187', 'serviceName', 'frontend');
insert into nodelabels values ('-2666103655705305890', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-2666103655705305890', 'startTime', '18');
insert into nodelabels values ('-2666103655705305890', 'status.code', '0');
insert into nodelabels values ('-2666103655705305890', 'serviceName', 'frontend');
insert into nodelabels values ('-2414144517692317596', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-2414144517692317596', 'startTime', '7');
insert into nodelabels values ('-2414144517692317596', 'status.code', '0');
insert into nodelabels values ('-2414144517692317596', 'serviceName', 'frontend');
insert into nodelabels values ('-55230314787862', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-55230314787862', 'startTime', '6');
insert into nodelabels values ('-55230314787862', 'status.code', '0');
insert into nodelabels values ('-55230314787862', 'serviceName', 'frontend');
insert into nodelabels values ('-6179843920251814788', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-6179843920251814788', 'startTime', '14');
insert into nodelabels values ('-6179843920251814788', 'status.code', '0');
insert into nodelabels values ('-6179843920251814788', 'serviceName', 'frontend');

