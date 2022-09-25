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
                insert into edge values ('-8640751965006332673', '-2231471981748237780');
insert into edge values ('-9113595478355739619', '4925292867212531374');
insert into edge values ('-8640751965006332673', '2436667637316903115');
insert into edge values ('-8640751965006332673', '7310585700941542326');
insert into edge values ('-8640751965006332673', '6911159855072770925');
insert into edge values ('-8640751965006332673', '-5994781420667137579');
insert into edge values ('-3904610759409147764', '8157293857060206829');
insert into edge values ('-2231471981748237780', '-9113595478355739619');
insert into edge values ('7310585700941542326', '-3904610759409147764');
insert into nodelabels values ('2436667637316903115', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('2436667637316903115', 'startTime', '5');
insert into nodelabels values ('2436667637316903115', 'status.code', '0');
insert into nodelabels values ('2436667637316903115', 'serviceName', 'frontend');
insert into nodelabels values ('-2231471981748237780', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-2231471981748237780', 'startTime', '2');
insert into nodelabels values ('-2231471981748237780', 'status.code', '0');
insert into nodelabels values ('-2231471981748237780', 'serviceName', 'frontend');
insert into nodelabels values ('6911159855072770925', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('6911159855072770925', 'startTime', '1');
insert into nodelabels values ('6911159855072770925', 'status.code', '0');
insert into nodelabels values ('6911159855072770925', 'serviceName', 'frontend');
insert into nodelabels values ('4925292867212531374', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('4925292867212531374', 'startTime', '4');
insert into nodelabels values ('4925292867212531374', 'status.code', '2');
insert into nodelabels values ('4925292867212531374', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-3904610759409147764', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('-3904610759409147764', 'startTime', '8');
insert into nodelabels values ('-3904610759409147764', 'status.code', '-1');
insert into nodelabels values ('-3904610759409147764', 'serviceName', 'adservice');
insert into nodelabels values ('8157293857060206829', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('8157293857060206829', 'startTime', '9');
insert into nodelabels values ('8157293857060206829', 'status.code', '-1');
insert into nodelabels values ('8157293857060206829', 'serviceName', 'adservice');
insert into nodelabels values ('-5994781420667137579', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-5994781420667137579', 'startTime', '6');
insert into nodelabels values ('-5994781420667137579', 'status.code', '0');
insert into nodelabels values ('-5994781420667137579', 'serviceName', 'frontend');
insert into nodelabels values ('7310585700941542326', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('7310585700941542326', 'startTime', '7');
insert into nodelabels values ('7310585700941542326', 'status.code', '0');
insert into nodelabels values ('7310585700941542326', 'serviceName', 'frontend');
insert into nodelabels values ('-9113595478355739619', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-9113595478355739619', 'startTime', '3');
insert into nodelabels values ('-9113595478355739619', 'status.code', '0');
insert into nodelabels values ('-9113595478355739619', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-8640751965006332673', 'operationName', 'Recv./');
insert into nodelabels values ('-8640751965006332673', 'startTime', '0');
insert into nodelabels values ('-8640751965006332673', 'status.code', '0');
insert into nodelabels values ('-8640751965006332673', 'serviceName', 'frontend');

