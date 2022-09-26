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
                insert into edge values('-3905125080973336932', '8755668514945163380');
insert into edge values('8755668514945163380', '3816475787123579555');
insert into edge values('-3905125080973336932', '6984399614232026813');
insert into edge values('-3905125080973336932', '1367151874033876966');
insert into edge values('-3905125080973336932', '8583577292028992837');
insert into edge values('-3905125080973336932', '-7168634752081413150');
insert into edge values('3816475787123579555', '5075433087500416101');
insert into edge values('-3905125080973336932', '5548742569167764706');
insert into edge values('5548742569167764706', '-8705020194367377585');
insert into edge values('-3905125080973336932', '-1295519411373615612');
insert into nodelabels values ('-7168634752081413150', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-7168634752081413150', 'startTime', '1');
insert into nodelabels values ('-7168634752081413150', 'status.code', '0');
insert into nodelabels values ('-7168634752081413150', 'serviceName', 'frontend');
insert into nodelabels values ('3816475787123579555', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('3816475787123579555', 'startTime', '3');
insert into nodelabels values ('3816475787123579555', 'status.code', '0');
insert into nodelabels values ('3816475787123579555', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('5548742569167764706', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('5548742569167764706', 'startTime', '8');
insert into nodelabels values ('5548742569167764706', 'status.code', '0');
insert into nodelabels values ('5548742569167764706', 'serviceName', 'frontend');
insert into nodelabels values ('8583577292028992837', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8583577292028992837', 'startTime', '6');
insert into nodelabels values ('8583577292028992837', 'status.code', '0');
insert into nodelabels values ('8583577292028992837', 'serviceName', 'frontend');
insert into nodelabels values ('1367151874033876966', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('1367151874033876966', 'startTime', '5');
insert into nodelabels values ('1367151874033876966', 'status.code', '0');
insert into nodelabels values ('1367151874033876966', 'serviceName', 'frontend');
insert into nodelabels values ('5075433087500416101', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('5075433087500416101', 'startTime', '4');
insert into nodelabels values ('5075433087500416101', 'status.code', '2');
insert into nodelabels values ('5075433087500416101', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-1295519411373615612', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-1295519411373615612', 'startTime', '7');
insert into nodelabels values ('-1295519411373615612', 'status.code', '2');
insert into nodelabels values ('-1295519411373615612', 'serviceName', 'frontend');
insert into nodelabels values ('-8705020194367377585', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-8705020194367377585', 'startTime', '9');
insert into nodelabels values ('-8705020194367377585', 'status.code', '0');
insert into nodelabels values ('-8705020194367377585', 'serviceName', 'shippingservice');
insert into nodelabels values ('8755668514945163380', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('8755668514945163380', 'startTime', '2');
insert into nodelabels values ('8755668514945163380', 'status.code', '0');
insert into nodelabels values ('8755668514945163380', 'serviceName', 'frontend');
insert into nodelabels values ('-3905125080973336932', 'operationName', 'Recv./');
insert into nodelabels values ('-3905125080973336932', 'startTime', '0');
insert into nodelabels values ('-3905125080973336932', 'status.code', '0');
insert into nodelabels values ('-3905125080973336932', 'serviceName', 'frontend');
insert into nodelabels values ('6984399614232026813', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('6984399614232026813', 'startTime', '10');
insert into nodelabels values ('6984399614232026813', 'status.code', '0');
insert into nodelabels values ('6984399614232026813', 'serviceName', 'frontend');

