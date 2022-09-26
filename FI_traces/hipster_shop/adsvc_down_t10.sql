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
                insert into edge values('-874562618100507660', '1206809056311705080');
insert into edge values('3947908043358558679', '3574155280196374916');
insert into edge values('8623898517288117370', '8079199638230751966');
insert into edge values('3947908043358558679', '-8511641477590453255');
insert into edge values('3947908043358558679', '4222139668007240885');
insert into edge values('3947908043358558679', '-1318936745839497798');
insert into edge values('3947908043358558679', '-7426596596205444679');
insert into edge values('3947908043358558679', '2390783034003751330');
insert into edge values('3947908043358558679', '-874562618100507660');
insert into edge values('3947908043358558679', '6910524738326367027');
insert into edge values('3947908043358558679', '3625012224960097948');
insert into edge values('3947908043358558679', '-2489263884849179682');
insert into edge values('3947908043358558679', '3250766036137144715');
insert into edge values('3947908043358558679', '9210707995984081318');
insert into edge values('3947908043358558679', '-2696928130697976924');
insert into edge values('3947908043358558679', '7355160131155300219');
insert into edge values('3947908043358558679', '-2878398754968643211');
insert into edge values('3574155280196374916', '8623898517288117370');
insert into nodelabels values ('3574155280196374916', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('3574155280196374916', 'startTime', '2');
insert into nodelabels values ('3574155280196374916', 'status.code', '0');
insert into nodelabels values ('3574155280196374916', 'serviceName', 'frontend');
insert into nodelabels values ('3250766036137144715', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('3250766036137144715', 'startTime', '11');
insert into nodelabels values ('3250766036137144715', 'status.code', '0');
insert into nodelabels values ('3250766036137144715', 'serviceName', 'frontend');
insert into nodelabels values ('3625012224960097948', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('3625012224960097948', 'startTime', '5');
insert into nodelabels values ('3625012224960097948', 'status.code', '0');
insert into nodelabels values ('3625012224960097948', 'serviceName', 'frontend');
insert into nodelabels values ('2390783034003751330', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('2390783034003751330', 'startTime', '10');
insert into nodelabels values ('2390783034003751330', 'status.code', '0');
insert into nodelabels values ('2390783034003751330', 'serviceName', 'frontend');
insert into nodelabels values ('-2696928130697976924', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-2696928130697976924', 'startTime', '15');
insert into nodelabels values ('-2696928130697976924', 'status.code', '2');
insert into nodelabels values ('-2696928130697976924', 'serviceName', 'frontend');
insert into nodelabels values ('9210707995984081318', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('9210707995984081318', 'startTime', '12');
insert into nodelabels values ('9210707995984081318', 'status.code', '0');
insert into nodelabels values ('9210707995984081318', 'serviceName', 'frontend');
insert into nodelabels values ('6910524738326367027', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('6910524738326367027', 'startTime', '14');
insert into nodelabels values ('6910524738326367027', 'status.code', '0');
insert into nodelabels values ('6910524738326367027', 'serviceName', 'frontend');
insert into nodelabels values ('4222139668007240885', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4222139668007240885', 'startTime', '8');
insert into nodelabels values ('4222139668007240885', 'status.code', '0');
insert into nodelabels values ('4222139668007240885', 'serviceName', 'frontend');
insert into nodelabels values ('-7426596596205444679', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-7426596596205444679', 'startTime', '9');
insert into nodelabels values ('-7426596596205444679', 'status.code', '0');
insert into nodelabels values ('-7426596596205444679', 'serviceName', 'frontend');
insert into nodelabels values ('-1318936745839497798', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-1318936745839497798', 'startTime', '13');
insert into nodelabels values ('-1318936745839497798', 'status.code', '0');
insert into nodelabels values ('-1318936745839497798', 'serviceName', 'frontend');
insert into nodelabels values ('3947908043358558679', 'operationName', 'Recv./');
insert into nodelabels values ('3947908043358558679', 'startTime', '0');
insert into nodelabels values ('3947908043358558679', 'status.code', '0');
insert into nodelabels values ('3947908043358558679', 'serviceName', 'frontend');
insert into nodelabels values ('-2489263884849179682', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-2489263884849179682', 'startTime', '6');
insert into nodelabels values ('-2489263884849179682', 'status.code', '0');
insert into nodelabels values ('-2489263884849179682', 'serviceName', 'frontend');
insert into nodelabels values ('8079199638230751966', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('8079199638230751966', 'startTime', '4');
insert into nodelabels values ('8079199638230751966', 'status.code', '2');
insert into nodelabels values ('8079199638230751966', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-874562618100507660', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-874562618100507660', 'startTime', '16');
insert into nodelabels values ('-874562618100507660', 'status.code', '0');
insert into nodelabels values ('-874562618100507660', 'serviceName', 'frontend');
insert into nodelabels values ('-2878398754968643211', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-2878398754968643211', 'startTime', '18');
insert into nodelabels values ('-2878398754968643211', 'status.code', '0');
insert into nodelabels values ('-2878398754968643211', 'serviceName', 'frontend');
insert into nodelabels values ('1206809056311705080', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('1206809056311705080', 'startTime', '17');
insert into nodelabels values ('1206809056311705080', 'status.code', '0');
insert into nodelabels values ('1206809056311705080', 'serviceName', 'shippingservice');
insert into nodelabels values ('-8511641477590453255', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-8511641477590453255', 'startTime', '7');
insert into nodelabels values ('-8511641477590453255', 'status.code', '0');
insert into nodelabels values ('-8511641477590453255', 'serviceName', 'frontend');
insert into nodelabels values ('8623898517288117370', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('8623898517288117370', 'startTime', '3');
insert into nodelabels values ('8623898517288117370', 'status.code', '0');
insert into nodelabels values ('8623898517288117370', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('7355160131155300219', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('7355160131155300219', 'startTime', '1');
insert into nodelabels values ('7355160131155300219', 'status.code', '0');
insert into nodelabels values ('7355160131155300219', 'serviceName', 'frontend');

