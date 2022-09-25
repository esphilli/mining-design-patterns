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
                insert into edge values ('-7105028486437999342', '-1697734532340885224');
insert into edge values ('-7105028486437999342', '6974553901425070590');
insert into edge values ('-7105028486437999342', '8402637701249874544');
insert into edge values ('-7105028486437999342', '-8510864299560563703');
insert into edge values ('-7105028486437999342', '-2630843025881323716');
insert into edge values ('-2630843025881323716', '1514747152153792358');
insert into edge values ('-7105028486437999342', '623345932714388041');
insert into edge values ('-7105028486437999342', '-5881787673093573978');
insert into edge values ('-7105028486437999342', '-4572778913992044197');
insert into edge values ('-7105028486437999342', '-4656544726566101861');
insert into edge values ('-7105028486437999342', '-8682244387766320875');
insert into edge values ('-7105028486437999342', '4565298256743791465');
insert into edge values ('-7105028486437999342', '276974734006048210');
insert into edge values ('-4656544726566101861', '-3252212229684611528');
insert into edge values ('-3252212229684611528', '-7689528703152177946');
insert into edge values ('-7105028486437999342', '2381675061736443623');
insert into edge values ('-7105028486437999342', '-2868865585563183751');
insert into edge values ('-7105028486437999342', '-5917477964259354819');
insert into nodelabels values ('-8510864299560563703', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-8510864299560563703', 'startTime', '8');
insert into nodelabels values ('-8510864299560563703', 'status.code', '0');
insert into nodelabels values ('-8510864299560563703', 'serviceName', 'frontend');
insert into nodelabels values ('-7105028486437999342', 'operationName', 'Recv./');
insert into nodelabels values ('-7105028486437999342', 'startTime', '0');
insert into nodelabels values ('-7105028486437999342', 'status.code', '0');
insert into nodelabels values ('-7105028486437999342', 'serviceName', 'frontend');
insert into nodelabels values ('-8682244387766320875', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-8682244387766320875', 'startTime', '14');
insert into nodelabels values ('-8682244387766320875', 'status.code', '0');
insert into nodelabels values ('-8682244387766320875', 'serviceName', 'frontend');
insert into nodelabels values ('-1697734532340885224', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-1697734532340885224', 'startTime', '7');
insert into nodelabels values ('-1697734532340885224', 'status.code', '0');
insert into nodelabels values ('-1697734532340885224', 'serviceName', 'frontend');
insert into nodelabels values ('-4656544726566101861', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-4656544726566101861', 'startTime', '2');
insert into nodelabels values ('-4656544726566101861', 'status.code', '0');
insert into nodelabels values ('-4656544726566101861', 'serviceName', 'frontend');
insert into nodelabels values ('-5881787673093573978', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-5881787673093573978', 'startTime', '11');
insert into nodelabels values ('-5881787673093573978', 'status.code', '0');
insert into nodelabels values ('-5881787673093573978', 'serviceName', 'frontend');
insert into nodelabels values ('-3252212229684611528', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-3252212229684611528', 'startTime', '3');
insert into nodelabels values ('-3252212229684611528', 'status.code', '0');
insert into nodelabels values ('-3252212229684611528', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-2630843025881323716', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-2630843025881323716', 'startTime', '16');
insert into nodelabels values ('-2630843025881323716', 'status.code', '0');
insert into nodelabels values ('-2630843025881323716', 'serviceName', 'frontend');
insert into nodelabels values ('-5917477964259354819', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-5917477964259354819', 'startTime', '6');
insert into nodelabels values ('-5917477964259354819', 'status.code', '0');
insert into nodelabels values ('-5917477964259354819', 'serviceName', 'frontend');
insert into nodelabels values ('623345932714388041', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('623345932714388041', 'startTime', '5');
insert into nodelabels values ('623345932714388041', 'status.code', '0');
insert into nodelabels values ('623345932714388041', 'serviceName', 'frontend');
insert into nodelabels values ('276974734006048210', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('276974734006048210', 'startTime', '1');
insert into nodelabels values ('276974734006048210', 'status.code', '0');
insert into nodelabels values ('276974734006048210', 'serviceName', 'frontend');
insert into nodelabels values ('-4572778913992044197', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-4572778913992044197', 'startTime', '13');
insert into nodelabels values ('-4572778913992044197', 'status.code', '0');
insert into nodelabels values ('-4572778913992044197', 'serviceName', 'frontend');
insert into nodelabels values ('1514747152153792358', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('1514747152153792358', 'startTime', '17');
insert into nodelabels values ('1514747152153792358', 'status.code', '0');
insert into nodelabels values ('1514747152153792358', 'serviceName', 'shippingservice');
insert into nodelabels values ('-7689528703152177946', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-7689528703152177946', 'startTime', '4');
insert into nodelabels values ('-7689528703152177946', 'status.code', '2');
insert into nodelabels values ('-7689528703152177946', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('2381675061736443623', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('2381675061736443623', 'startTime', '18');
insert into nodelabels values ('2381675061736443623', 'status.code', '0');
insert into nodelabels values ('2381675061736443623', 'serviceName', 'frontend');
insert into nodelabels values ('4565298256743791465', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4565298256743791465', 'startTime', '9');
insert into nodelabels values ('4565298256743791465', 'status.code', '0');
insert into nodelabels values ('4565298256743791465', 'serviceName', 'frontend');
insert into nodelabels values ('8402637701249874544', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8402637701249874544', 'startTime', '12');
insert into nodelabels values ('8402637701249874544', 'status.code', '0');
insert into nodelabels values ('8402637701249874544', 'serviceName', 'frontend');
insert into nodelabels values ('-2868865585563183751', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-2868865585563183751', 'startTime', '15');
insert into nodelabels values ('-2868865585563183751', 'status.code', '2');
insert into nodelabels values ('-2868865585563183751', 'serviceName', 'frontend');
insert into nodelabels values ('6974553901425070590', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('6974553901425070590', 'startTime', '10');
insert into nodelabels values ('6974553901425070590', 'status.code', '0');
insert into nodelabels values ('6974553901425070590', 'serviceName', 'frontend');

