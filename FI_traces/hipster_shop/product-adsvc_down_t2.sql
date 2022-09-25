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
                insert into edge values ('-491312627859361059', '-8372429912790432803');
insert into edge values ('-8372429912790432803', '7676324625342550381');
insert into edge values ('-491312627859361059', '-4808057300675828894');
insert into edge values ('5014899154073651828', '8124753422685114643');
insert into edge values ('-788442323241782884', '5014899154073651828');
insert into edge values ('-491312627859361059', '-5580774039613041081');
insert into edge values ('-491312627859361059', '-788442323241782884');
insert into edge values ('-491312627859361059', '-9160593143846292989');
insert into edge values ('7676324625342550381', '-245151927537946730');
insert into nodelabels values ('-4808057300675828894', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-4808057300675828894', 'startTime', '1');
insert into nodelabels values ('-4808057300675828894', 'status.code', '0');
insert into nodelabels values ('-4808057300675828894', 'serviceName', 'frontend');
insert into nodelabels values ('-9160593143846292989', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-9160593143846292989', 'startTime', '6');
insert into nodelabels values ('-9160593143846292989', 'status.code', '0');
insert into nodelabels values ('-9160593143846292989', 'serviceName', 'frontend');
insert into nodelabels values ('-5580774039613041081', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('-5580774039613041081', 'startTime', '5');
insert into nodelabels values ('-5580774039613041081', 'status.code', '0');
insert into nodelabels values ('-5580774039613041081', 'serviceName', 'frontend');
insert into nodelabels values ('-491312627859361059', 'operationName', 'Recv./');
insert into nodelabels values ('-491312627859361059', 'startTime', '0');
insert into nodelabels values ('-491312627859361059', 'status.code', '0');
insert into nodelabels values ('-491312627859361059', 'serviceName', 'frontend');
insert into nodelabels values ('7676324625342550381', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('7676324625342550381', 'startTime', '3');
insert into nodelabels values ('7676324625342550381', 'status.code', '0');
insert into nodelabels values ('7676324625342550381', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('8124753422685114643', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('8124753422685114643', 'startTime', '9');
insert into nodelabels values ('8124753422685114643', 'status.code', '-1');
insert into nodelabels values ('8124753422685114643', 'serviceName', 'adservice');
insert into nodelabels values ('5014899154073651828', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('5014899154073651828', 'startTime', '8');
insert into nodelabels values ('5014899154073651828', 'status.code', '-1');
insert into nodelabels values ('5014899154073651828', 'serviceName', 'adservice');
insert into nodelabels values ('-245151927537946730', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-245151927537946730', 'startTime', '4');
insert into nodelabels values ('-245151927537946730', 'status.code', '2');
insert into nodelabels values ('-245151927537946730', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-788442323241782884', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-788442323241782884', 'startTime', '7');
insert into nodelabels values ('-788442323241782884', 'status.code', '0');
insert into nodelabels values ('-788442323241782884', 'serviceName', 'frontend');
insert into nodelabels values ('-8372429912790432803', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-8372429912790432803', 'startTime', '2');
insert into nodelabels values ('-8372429912790432803', 'status.code', '0');
insert into nodelabels values ('-8372429912790432803', 'serviceName', 'frontend');

