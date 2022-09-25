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
                insert into edge values ('-1138041882075791430', '-6965175798571142473');
insert into edge values ('-1138041882075791430', '2650693381913860480');
insert into edge values ('-1138041882075791430', '-6810756715529408820');
insert into edge values ('-1138041882075791430', '-5129927830511904635');
insert into edge values ('-1138041882075791430', '-8006872553557302452');
insert into edge values ('-1138041882075791430', '8975172096667532762');
insert into edge values ('-6965175798571142473', '1658062474847230323');
insert into edge values ('-1138041882075791430', '762216218009348338');
insert into edge values ('-2646119367017073023', '5279293993354751896');
insert into edge values ('-1138041882075791430', '2037323875973831798');
insert into edge values ('-1138041882075791430', '-4692867198543275433');
insert into edge values ('-1138041882075791430', '-3754570498643911891');
insert into edge values ('-1138041882075791430', '1505554715424512991');
insert into edge values ('7165065320413823786', '774132358143267874');
insert into edge values ('-1138041882075791430', '7165065320413823786');
insert into edge values ('774132358143267874', '-8677994537268787645');
insert into edge values ('-1138041882075791430', '-7436709814564428701');
insert into edge values ('-1138041882075791430', '4407974607519111013');
insert into edge values ('-8677994537268787645', '-2646119367017073023');
insert into nodelabels values ('2650693381913860480', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('2650693381913860480', 'startTime', '16');
insert into nodelabels values ('2650693381913860480', 'status.code', '0');
insert into nodelabels values ('2650693381913860480', 'serviceName', 'frontend');
insert into nodelabels values ('-2646119367017073023', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('-2646119367017073023', 'startTime', '5');
insert into nodelabels values ('-2646119367017073023', 'status.code', '-1');
insert into nodelabels values ('-2646119367017073023', 'serviceName', 'adservice');
insert into nodelabels values ('-5129927830511904635', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-5129927830511904635', 'startTime', '1');
insert into nodelabels values ('-5129927830511904635', 'status.code', '0');
insert into nodelabels values ('-5129927830511904635', 'serviceName', 'frontend');
insert into nodelabels values ('5279293993354751896', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('5279293993354751896', 'startTime', '6');
insert into nodelabels values ('5279293993354751896', 'status.code', '-1');
insert into nodelabels values ('5279293993354751896', 'serviceName', 'adservice');
insert into nodelabels values ('774132358143267874', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('774132358143267874', 'startTime', '3');
insert into nodelabels values ('774132358143267874', 'status.code', '0');
insert into nodelabels values ('774132358143267874', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('7165065320413823786', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('7165065320413823786', 'startTime', '2');
insert into nodelabels values ('7165065320413823786', 'status.code', '0');
insert into nodelabels values ('7165065320413823786', 'serviceName', 'frontend');
insert into nodelabels values ('-3754570498643911891', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('-3754570498643911891', 'startTime', '7');
insert into nodelabels values ('-3754570498643911891', 'status.code', '0');
insert into nodelabels values ('-3754570498643911891', 'serviceName', 'frontend');
insert into nodelabels values ('-6965175798571142473', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-6965175798571142473', 'startTime', '18');
insert into nodelabels values ('-6965175798571142473', 'status.code', '2');
insert into nodelabels values ('-6965175798571142473', 'serviceName', 'frontend');
insert into nodelabels values ('-1138041882075791430', 'operationName', 'Recv./');
insert into nodelabels values ('-1138041882075791430', 'startTime', '0');
insert into nodelabels values ('-1138041882075791430', 'status.code', '0');
insert into nodelabels values ('-1138041882075791430', 'serviceName', 'frontend');
insert into nodelabels values ('-8677994537268787645', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-8677994537268787645', 'startTime', '4');
insert into nodelabels values ('-8677994537268787645', 'status.code', '0');
insert into nodelabels values ('-8677994537268787645', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-6810756715529408820', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-6810756715529408820', 'startTime', '13');
insert into nodelabels values ('-6810756715529408820', 'status.code', '0');
insert into nodelabels values ('-6810756715529408820', 'serviceName', 'frontend');
insert into nodelabels values ('-8006872553557302452', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-8006872553557302452', 'startTime', '10');
insert into nodelabels values ('-8006872553557302452', 'status.code', '0');
insert into nodelabels values ('-8006872553557302452', 'serviceName', 'frontend');
insert into nodelabels values ('-4692867198543275433', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-4692867198543275433', 'startTime', '12');
insert into nodelabels values ('-4692867198543275433', 'status.code', '0');
insert into nodelabels values ('-4692867198543275433', 'serviceName', 'frontend');
insert into nodelabels values ('8975172096667532762', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8975172096667532762', 'startTime', '9');
insert into nodelabels values ('8975172096667532762', 'status.code', '0');
insert into nodelabels values ('8975172096667532762', 'serviceName', 'frontend');
insert into nodelabels values ('1505554715424512991', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('1505554715424512991', 'startTime', '14');
insert into nodelabels values ('1505554715424512991', 'status.code', '0');
insert into nodelabels values ('1505554715424512991', 'serviceName', 'frontend');
insert into nodelabels values ('-7436709814564428701', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-7436709814564428701', 'startTime', '8');
insert into nodelabels values ('-7436709814564428701', 'status.code', '0');
insert into nodelabels values ('-7436709814564428701', 'serviceName', 'frontend');
insert into nodelabels values ('4407974607519111013', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4407974607519111013', 'startTime', '15');
insert into nodelabels values ('4407974607519111013', 'status.code', '0');
insert into nodelabels values ('4407974607519111013', 'serviceName', 'frontend');
insert into nodelabels values ('762216218009348338', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('762216218009348338', 'startTime', '17');
insert into nodelabels values ('762216218009348338', 'status.code', '2');
insert into nodelabels values ('762216218009348338', 'serviceName', 'frontend');
insert into nodelabels values ('1658062474847230323', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('1658062474847230323', 'startTime', '19');
insert into nodelabels values ('1658062474847230323', 'status.code', '2');
insert into nodelabels values ('1658062474847230323', 'serviceName', 'shippingservice');
insert into nodelabels values ('2037323875973831798', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('2037323875973831798', 'startTime', '11');
insert into nodelabels values ('2037323875973831798', 'status.code', '0');
insert into nodelabels values ('2037323875973831798', 'serviceName', 'frontend');

