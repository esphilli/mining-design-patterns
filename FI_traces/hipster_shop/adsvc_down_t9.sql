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
                insert into edge values('-7273360703917781966', '1047276928558488875');
insert into edge values('-7273360703917781966', '916692634482936589');
insert into edge values('-7273360703917781966', '-8633269371247482739');
insert into edge values('-7273360703917781966', '6532977739943958125');
insert into edge values('-7273360703917781966', '3302099320478225901');
insert into edge values('-7273360703917781966', '-5159091187298749637');
insert into edge values('-7273360703917781966', '8553386701147992972');
insert into edge values('-7273360703917781966', '-2894897184621702966');
insert into edge values('-8633269371247482739', '446601430869911682');
insert into edge values('446601430869911682', '3679584379813261627');
insert into edge values('-7273360703917781966', '3448878531865100748');
insert into edge values('-7273360703917781966', '2756367125399908439');
insert into edge values('-7273360703917781966', '9021223961017146202');
insert into edge values('-7273360703917781966', '-2593643762125932636');
insert into edge values('-7273360703917781966', '-4439403358179299673');
insert into edge values('-2593643762125932636', '-7009436169731397777');
insert into edge values('-7273360703917781966', '5899833648583599168');
insert into edge values('-7273360703917781966', '2743885472861047374');
insert into nodelabels values ('446601430869911682', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('446601430869911682', 'startTime', '3');
insert into nodelabels values ('446601430869911682', 'status.code', '0');
insert into nodelabels values ('446601430869911682', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('8553386701147992972', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('8553386701147992972', 'startTime', '1');
insert into nodelabels values ('8553386701147992972', 'status.code', '0');
insert into nodelabels values ('8553386701147992972', 'serviceName', 'frontend');
insert into nodelabels values ('916692634482936589', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('916692634482936589', 'startTime', '18');
insert into nodelabels values ('916692634482936589', 'status.code', '0');
insert into nodelabels values ('916692634482936589', 'serviceName', 'frontend');
insert into nodelabels values ('-8633269371247482739', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-8633269371247482739', 'startTime', '2');
insert into nodelabels values ('-8633269371247482739', 'status.code', '0');
insert into nodelabels values ('-8633269371247482739', 'serviceName', 'frontend');
insert into nodelabels values ('-2593643762125932636', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-2593643762125932636', 'startTime', '16');
insert into nodelabels values ('-2593643762125932636', 'status.code', '0');
insert into nodelabels values ('-2593643762125932636', 'serviceName', 'frontend');
insert into nodelabels values ('-4439403358179299673', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-4439403358179299673', 'startTime', '12');
insert into nodelabels values ('-4439403358179299673', 'status.code', '0');
insert into nodelabels values ('-4439403358179299673', 'serviceName', 'frontend');
insert into nodelabels values ('1047276928558488875', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('1047276928558488875', 'startTime', '10');
insert into nodelabels values ('1047276928558488875', 'status.code', '0');
insert into nodelabels values ('1047276928558488875', 'serviceName', 'frontend');
insert into nodelabels values ('-7273360703917781966', 'operationName', 'Recv./');
insert into nodelabels values ('-7273360703917781966', 'startTime', '0');
insert into nodelabels values ('-7273360703917781966', 'status.code', '0');
insert into nodelabels values ('-7273360703917781966', 'serviceName', 'frontend');
insert into nodelabels values ('3679584379813261627', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('3679584379813261627', 'startTime', '4');
insert into nodelabels values ('3679584379813261627', 'status.code', '2');
insert into nodelabels values ('3679584379813261627', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-5159091187298749637', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-5159091187298749637', 'startTime', '11');
insert into nodelabels values ('-5159091187298749637', 'status.code', '0');
insert into nodelabels values ('-5159091187298749637', 'serviceName', 'frontend');
insert into nodelabels values ('5899833648583599168', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('5899833648583599168', 'startTime', '14');
insert into nodelabels values ('5899833648583599168', 'status.code', '0');
insert into nodelabels values ('5899833648583599168', 'serviceName', 'frontend');
insert into nodelabels values ('-2894897184621702966', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('-2894897184621702966', 'startTime', '5');
insert into nodelabels values ('-2894897184621702966', 'status.code', '0');
insert into nodelabels values ('-2894897184621702966', 'serviceName', 'frontend');
insert into nodelabels values ('3448878531865100748', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('3448878531865100748', 'startTime', '13');
insert into nodelabels values ('3448878531865100748', 'status.code', '0');
insert into nodelabels values ('3448878531865100748', 'serviceName', 'frontend');
insert into nodelabels values ('2743885472861047374', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('2743885472861047374', 'startTime', '6');
insert into nodelabels values ('2743885472861047374', 'status.code', '0');
insert into nodelabels values ('2743885472861047374', 'serviceName', 'frontend');
insert into nodelabels values ('2756367125399908439', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('2756367125399908439', 'startTime', '15');
insert into nodelabels values ('2756367125399908439', 'status.code', '2');
insert into nodelabels values ('2756367125399908439', 'serviceName', 'frontend');
insert into nodelabels values ('9021223961017146202', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('9021223961017146202', 'startTime', '7');
insert into nodelabels values ('9021223961017146202', 'status.code', '0');
insert into nodelabels values ('9021223961017146202', 'serviceName', 'frontend');
insert into nodelabels values ('6532977739943958125', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('6532977739943958125', 'startTime', '9');
insert into nodelabels values ('6532977739943958125', 'status.code', '0');
insert into nodelabels values ('6532977739943958125', 'serviceName', 'frontend');
insert into nodelabels values ('3302099320478225901', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('3302099320478225901', 'startTime', '8');
insert into nodelabels values ('3302099320478225901', 'status.code', '0');
insert into nodelabels values ('3302099320478225901', 'serviceName', 'frontend');
insert into nodelabels values ('-7009436169731397777', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-7009436169731397777', 'startTime', '17');
insert into nodelabels values ('-7009436169731397777', 'status.code', '0');
insert into nodelabels values ('-7009436169731397777', 'serviceName', 'shippingservice');

