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
                insert into edge values ('6059405241272163842', '2402615103151168956');
insert into edge values ('441624316519999054', '8962472210358124647');
insert into edge values ('4892853429142346562', '-4537486199003848940');
insert into edge values ('4892853429142346562', '3066820332228972394');
insert into edge values ('-7467607010730299054', '441624316519999054');
insert into edge values ('4892853429142346562', '-923354353349902837');
insert into edge values ('4892853429142346562', '-9038195307039892357');
insert into edge values ('4892853429142346562', '4778494670384847456');
insert into edge values ('4892853429142346562', '6059405241272163842');
insert into edge values ('2402615103151168956', '8510360426233714427');
insert into edge values ('4892853429142346562', '-5219186006103878015');
insert into edge values ('4892853429142346562', '5480637448077801388');
insert into edge values ('4892853429142346562', '8098681383504309113');
insert into edge values ('4892853429142346562', '1904249066421804933');
insert into edge values ('4892853429142346562', '-5658422210976250038');
insert into edge values ('4892853429142346562', '-7467607010730299054');
insert into edge values ('4892853429142346562', '-2401094129724923911');
insert into nodelabels values ('4778494670384847456', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4778494670384847456', 'startTime', '7');
insert into nodelabels values ('4778494670384847456', 'status.code', '0');
insert into nodelabels values ('4778494670384847456', 'serviceName', 'frontend');
insert into nodelabels values ('-5219186006103878015', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-5219186006103878015', 'startTime', '9');
insert into nodelabels values ('-5219186006103878015', 'status.code', '0');
insert into nodelabels values ('-5219186006103878015', 'serviceName', 'frontend');
insert into nodelabels values ('6059405241272163842', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('6059405241272163842', 'startTime', '15');
insert into nodelabels values ('6059405241272163842', 'status.code', '0');
insert into nodelabels values ('6059405241272163842', 'serviceName', 'frontend');
insert into nodelabels values ('4892853429142346562', 'operationName', 'Recv./');
insert into nodelabels values ('4892853429142346562', 'startTime', '0');
insert into nodelabels values ('4892853429142346562', 'status.code', '0');
insert into nodelabels values ('4892853429142346562', 'serviceName', 'frontend');
insert into nodelabels values ('1904249066421804933', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('1904249066421804933', 'startTime', '6');
insert into nodelabels values ('1904249066421804933', 'status.code', '0');
insert into nodelabels values ('1904249066421804933', 'serviceName', 'frontend');
insert into nodelabels values ('8962472210358124647', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('8962472210358124647', 'startTime', '4');
insert into nodelabels values ('8962472210358124647', 'status.code', '2');
insert into nodelabels values ('8962472210358124647', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('3066820332228972394', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('3066820332228972394', 'startTime', '11');
insert into nodelabels values ('3066820332228972394', 'status.code', '0');
insert into nodelabels values ('3066820332228972394', 'serviceName', 'frontend');
insert into nodelabels values ('-923354353349902837', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('-923354353349902837', 'startTime', '5');
insert into nodelabels values ('-923354353349902837', 'status.code', '0');
insert into nodelabels values ('-923354353349902837', 'serviceName', 'frontend');
insert into nodelabels values ('5480637448077801388', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('5480637448077801388', 'startTime', '10');
insert into nodelabels values ('5480637448077801388', 'status.code', '0');
insert into nodelabels values ('5480637448077801388', 'serviceName', 'frontend');
insert into nodelabels values ('-5658422210976250038', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-5658422210976250038', 'startTime', '8');
insert into nodelabels values ('-5658422210976250038', 'status.code', '0');
insert into nodelabels values ('-5658422210976250038', 'serviceName', 'frontend');
insert into nodelabels values ('441624316519999054', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('441624316519999054', 'startTime', '3');
insert into nodelabels values ('441624316519999054', 'status.code', '0');
insert into nodelabels values ('441624316519999054', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-7467607010730299054', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-7467607010730299054', 'startTime', '2');
insert into nodelabels values ('-7467607010730299054', 'status.code', '0');
insert into nodelabels values ('-7467607010730299054', 'serviceName', 'frontend');
insert into nodelabels values ('-4537486199003848940', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-4537486199003848940', 'startTime', '14');
insert into nodelabels values ('-4537486199003848940', 'status.code', '0');
insert into nodelabels values ('-4537486199003848940', 'serviceName', 'frontend');
insert into nodelabels values ('8098681383504309113', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8098681383504309113', 'startTime', '12');
insert into nodelabels values ('8098681383504309113', 'status.code', '0');
insert into nodelabels values ('8098681383504309113', 'serviceName', 'frontend');
insert into nodelabels values ('-9038195307039892357', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-9038195307039892357', 'startTime', '1');
insert into nodelabels values ('-9038195307039892357', 'status.code', '0');
insert into nodelabels values ('-9038195307039892357', 'serviceName', 'frontend');
insert into nodelabels values ('2402615103151168956', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('2402615103151168956', 'startTime', '16');
insert into nodelabels values ('2402615103151168956', 'status.code', '-1');
insert into nodelabels values ('2402615103151168956', 'serviceName', 'adservice');
insert into nodelabels values ('-2401094129724923911', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-2401094129724923911', 'startTime', '13');
insert into nodelabels values ('-2401094129724923911', 'status.code', '0');
insert into nodelabels values ('-2401094129724923911', 'serviceName', 'frontend');
insert into nodelabels values ('8510360426233714427', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('8510360426233714427', 'startTime', '17');
insert into nodelabels values ('8510360426233714427', 'status.code', '-1');
insert into nodelabels values ('8510360426233714427', 'serviceName', 'adservice');

