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
                insert into edge values('-8610107635127417586', '-7773506757244648282');
insert into edge values('-3022722865458235361', '-4888318782241422695');
insert into edge values('-8610107635127417586', '11334814706652579');
insert into edge values('-8610107635127417586', '-7281165103925188899');
insert into edge values('-8610107635127417586', '3166256321890797859');
insert into edge values('-8610107635127417586', '-3022722865458235361');
insert into edge values('-7773506757244648282', '4122805590593800359');
insert into edge values('-8610107635127417586', '-4590321573894480191');
insert into edge values('-8610107635127417586', '-8851602720023474699');
insert into edge values('-4888318782241422695', '-3384439556866084003');
insert into nodelabels values ('-4590321573894480191', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-4590321573894480191', 'startTime', '1');
insert into nodelabels values ('-4590321573894480191', 'status.code', '0');
insert into nodelabels values ('-4590321573894480191', 'serviceName', 'frontend');
insert into nodelabels values ('11334814706652579', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('11334814706652579', 'startTime', '5');
insert into nodelabels values ('11334814706652579', 'status.code', '0');
insert into nodelabels values ('11334814706652579', 'serviceName', 'frontend');
insert into nodelabels values ('3166256321890797859', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('3166256321890797859', 'startTime', '10');
insert into nodelabels values ('3166256321890797859', 'status.code', '0');
insert into nodelabels values ('3166256321890797859', 'serviceName', 'frontend');
insert into nodelabels values ('-7773506757244648282', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-7773506757244648282', 'startTime', '8');
insert into nodelabels values ('-7773506757244648282', 'status.code', '0');
insert into nodelabels values ('-7773506757244648282', 'serviceName', 'frontend');
insert into nodelabels values ('4122805590593800359', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('4122805590593800359', 'startTime', '9');
insert into nodelabels values ('4122805590593800359', 'status.code', '0');
insert into nodelabels values ('4122805590593800359', 'serviceName', 'shippingservice');
insert into nodelabels values ('-3384439556866084003', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-3384439556866084003', 'startTime', '4');
insert into nodelabels values ('-3384439556866084003', 'status.code', '2');
insert into nodelabels values ('-3384439556866084003', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-8610107635127417586', 'operationName', 'Recv./');
insert into nodelabels values ('-8610107635127417586', 'startTime', '0');
insert into nodelabels values ('-8610107635127417586', 'status.code', '0');
insert into nodelabels values ('-8610107635127417586', 'serviceName', 'frontend');
insert into nodelabels values ('-8851602720023474699', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-8851602720023474699', 'startTime', '6');
insert into nodelabels values ('-8851602720023474699', 'status.code', '0');
insert into nodelabels values ('-8851602720023474699', 'serviceName', 'frontend');
insert into nodelabels values ('-4888318782241422695', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-4888318782241422695', 'startTime', '3');
insert into nodelabels values ('-4888318782241422695', 'status.code', '0');
insert into nodelabels values ('-4888318782241422695', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-7281165103925188899', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-7281165103925188899', 'startTime', '7');
insert into nodelabels values ('-7281165103925188899', 'status.code', '2');
insert into nodelabels values ('-7281165103925188899', 'serviceName', 'frontend');
insert into nodelabels values ('-3022722865458235361', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-3022722865458235361', 'startTime', '2');
insert into nodelabels values ('-3022722865458235361', 'status.code', '0');
insert into nodelabels values ('-3022722865458235361', 'serviceName', 'frontend');

