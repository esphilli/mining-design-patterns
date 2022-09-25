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
                insert into edge values ('-3443285959583799273', '-8408616037375178810');
insert into edge values ('-7715121968998120959', '4800457526356334080');
insert into edge values ('-3443285959583799273', '4117249505741647033');
insert into edge values ('-3443285959583799273', '-2230528853422222087');
insert into edge values ('6292711765211809609', '-1378858059760283295');
insert into edge values ('-3443285959583799273', '-4326779708361628084');
insert into edge values ('-3443285959583799273', '4389085699021642436');
insert into edge values ('-3443285959583799273', '8209836232512404773');
insert into edge values ('-8408616037375178810', '6292711765211809609');
insert into edge values ('-3443285959583799273', '5516917794978893749');
insert into edge values ('-3443285959583799273', '-7084674013477037125');
insert into edge values ('-3443285959583799273', '-3249981083026678846');
insert into edge values ('-3443285959583799273', '2952025605388547201');
insert into edge values ('-7084674013477037125', '-7715121968998120959');
insert into edge values ('-3443285959583799273', '-2704066046070969627');
insert into edge values ('-3443285959583799273', '-7066990480560329580');
insert into edge values ('-3443285959583799273', '3157093504614140365');
insert into nodelabels values ('4800457526356334080', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('4800457526356334080', 'startTime', '4');
insert into nodelabels values ('4800457526356334080', 'status.code', '2');
insert into nodelabels values ('4800457526356334080', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-7715121968998120959', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-7715121968998120959', 'startTime', '3');
insert into nodelabels values ('-7715121968998120959', 'status.code', '0');
insert into nodelabels values ('-7715121968998120959', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-1378858059760283295', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('-1378858059760283295', 'startTime', '17');
insert into nodelabels values ('-1378858059760283295', 'status.code', '-1');
insert into nodelabels values ('-1378858059760283295', 'serviceName', 'adservice');
insert into nodelabels values ('-3249981083026678846', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-3249981083026678846', 'startTime', '10');
insert into nodelabels values ('-3249981083026678846', 'status.code', '0');
insert into nodelabels values ('-3249981083026678846', 'serviceName', 'frontend');
insert into nodelabels values ('4389085699021642436', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4389085699021642436', 'startTime', '9');
insert into nodelabels values ('4389085699021642436', 'status.code', '0');
insert into nodelabels values ('4389085699021642436', 'serviceName', 'frontend');
insert into nodelabels values ('-2230528853422222087', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-2230528853422222087', 'startTime', '13');
insert into nodelabels values ('-2230528853422222087', 'status.code', '0');
insert into nodelabels values ('-2230528853422222087', 'serviceName', 'frontend');
insert into nodelabels values ('-8408616037375178810', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-8408616037375178810', 'startTime', '15');
insert into nodelabels values ('-8408616037375178810', 'status.code', '0');
insert into nodelabels values ('-8408616037375178810', 'serviceName', 'frontend');
insert into nodelabels values ('8209836232512404773', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8209836232512404773', 'startTime', '7');
insert into nodelabels values ('8209836232512404773', 'status.code', '0');
insert into nodelabels values ('8209836232512404773', 'serviceName', 'frontend');
insert into nodelabels values ('2952025605388547201', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('2952025605388547201', 'startTime', '5');
insert into nodelabels values ('2952025605388547201', 'status.code', '0');
insert into nodelabels values ('2952025605388547201', 'serviceName', 'frontend');
insert into nodelabels values ('6292711765211809609', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('6292711765211809609', 'startTime', '16');
insert into nodelabels values ('6292711765211809609', 'status.code', '-1');
insert into nodelabels values ('6292711765211809609', 'serviceName', 'adservice');
insert into nodelabels values ('-2704066046070969627', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-2704066046070969627', 'startTime', '14');
insert into nodelabels values ('-2704066046070969627', 'status.code', '0');
insert into nodelabels values ('-2704066046070969627', 'serviceName', 'frontend');
insert into nodelabels values ('-4326779708361628084', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-4326779708361628084', 'startTime', '1');
insert into nodelabels values ('-4326779708361628084', 'status.code', '0');
insert into nodelabels values ('-4326779708361628084', 'serviceName', 'frontend');
insert into nodelabels values ('3157093504614140365', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('3157093504614140365', 'startTime', '8');
insert into nodelabels values ('3157093504614140365', 'status.code', '0');
insert into nodelabels values ('3157093504614140365', 'serviceName', 'frontend');
insert into nodelabels values ('-7066990480560329580', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-7066990480560329580', 'startTime', '6');
insert into nodelabels values ('-7066990480560329580', 'status.code', '0');
insert into nodelabels values ('-7066990480560329580', 'serviceName', 'frontend');
insert into nodelabels values ('5516917794978893749', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('5516917794978893749', 'startTime', '11');
insert into nodelabels values ('5516917794978893749', 'status.code', '0');
insert into nodelabels values ('5516917794978893749', 'serviceName', 'frontend');
insert into nodelabels values ('-3443285959583799273', 'operationName', 'Recv./');
insert into nodelabels values ('-3443285959583799273', 'startTime', '0');
insert into nodelabels values ('-3443285959583799273', 'status.code', '0');
insert into nodelabels values ('-3443285959583799273', 'serviceName', 'frontend');
insert into nodelabels values ('4117249505741647033', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4117249505741647033', 'startTime', '12');
insert into nodelabels values ('4117249505741647033', 'status.code', '0');
insert into nodelabels values ('4117249505741647033', 'serviceName', 'frontend');
insert into nodelabels values ('-7084674013477037125', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-7084674013477037125', 'startTime', '2');
insert into nodelabels values ('-7084674013477037125', 'status.code', '0');
insert into nodelabels values ('-7084674013477037125', 'serviceName', 'frontend');

