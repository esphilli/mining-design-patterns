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
                insert into edge values ('6919777900057017698', '-3919103394745123024');
insert into edge values ('-2700939772263312578', '-9124796920314332248');
insert into edge values ('6919777900057017698', '6508422931933694395');
insert into edge values ('6919777900057017698', '2979953943999062448');
insert into edge values ('6919777900057017698', '-1055283716215796685');
insert into edge values ('6919777900057017698', '-2700939772263312578');
insert into edge values ('-2442717014838829410', '-4894485721489390502');
insert into edge values ('6919777900057017698', '188472560737510882');
insert into edge values ('6919777900057017698', '-2442717014838829410');
insert into edge values ('-9124796920314332248', '1652491959025806440');
insert into nodelabels values ('6919777900057017698', 'operationName', 'Recv./');
insert into nodelabels values ('6919777900057017698', 'startTime', '0');
insert into nodelabels values ('6919777900057017698', 'status.code', '0');
insert into nodelabels values ('6919777900057017698', 'serviceName', 'frontend');
insert into nodelabels values ('188472560737510882', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('188472560737510882', 'startTime', '6');
insert into nodelabels values ('188472560737510882', 'status.code', '0');
insert into nodelabels values ('188472560737510882', 'serviceName', 'frontend');
insert into nodelabels values ('-9124796920314332248', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-9124796920314332248', 'startTime', '3');
insert into nodelabels values ('-9124796920314332248', 'status.code', '0');
insert into nodelabels values ('-9124796920314332248', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('1652491959025806440', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('1652491959025806440', 'startTime', '4');
insert into nodelabels values ('1652491959025806440', 'status.code', '2');
insert into nodelabels values ('1652491959025806440', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-2442717014838829410', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-2442717014838829410', 'startTime', '8');
insert into nodelabels values ('-2442717014838829410', 'status.code', '0');
insert into nodelabels values ('-2442717014838829410', 'serviceName', 'frontend');
insert into nodelabels values ('-3919103394745123024', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-3919103394745123024', 'startTime', '7');
insert into nodelabels values ('-3919103394745123024', 'status.code', '2');
insert into nodelabels values ('-3919103394745123024', 'serviceName', 'frontend');
insert into nodelabels values ('2979953943999062448', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('2979953943999062448', 'startTime', '5');
insert into nodelabels values ('2979953943999062448', 'status.code', '0');
insert into nodelabels values ('2979953943999062448', 'serviceName', 'frontend');
insert into nodelabels values ('-1055283716215796685', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-1055283716215796685', 'startTime', '1');
insert into nodelabels values ('-1055283716215796685', 'status.code', '0');
insert into nodelabels values ('-1055283716215796685', 'serviceName', 'frontend');
insert into nodelabels values ('-4894485721489390502', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-4894485721489390502', 'startTime', '9');
insert into nodelabels values ('-4894485721489390502', 'status.code', '0');
insert into nodelabels values ('-4894485721489390502', 'serviceName', 'shippingservice');
insert into nodelabels values ('6508422931933694395', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('6508422931933694395', 'startTime', '10');
insert into nodelabels values ('6508422931933694395', 'status.code', '0');
insert into nodelabels values ('6508422931933694395', 'serviceName', 'frontend');
insert into nodelabels values ('-2700939772263312578', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-2700939772263312578', 'startTime', '2');
insert into nodelabels values ('-2700939772263312578', 'status.code', '0');
insert into nodelabels values ('-2700939772263312578', 'serviceName', 'frontend');

