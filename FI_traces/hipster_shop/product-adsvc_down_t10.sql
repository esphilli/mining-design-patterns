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
                insert into edge values ('-930867861212194235', '-1234522535774727039');
insert into edge values ('-930867861212194235', '1603721034602045395');
insert into edge values ('1887403816243541774', '-1617887309932874826');
insert into edge values ('-8203515640243839454', '-6069098400674724724');
insert into edge values ('-930867861212194235', '1105173489934661727');
insert into edge values ('-1809435218319636916', '-8203515640243839454');
insert into edge values ('-930867861212194235', '-5614338680861778839');
insert into edge values ('-930867861212194235', '6565908139338660031');
insert into edge values ('-930867861212194235', '-6318357647233343836');
insert into edge values ('-930867861212194235', '4054847797995707831');
insert into edge values ('-930867861212194235', '2972285063214077752');
insert into edge values ('-5614338680861778839', '1887403816243541774');
insert into edge values ('-930867861212194235', '-7356443512962753532');
insert into edge values ('-930867861212194235', '1738156930564948259');
insert into edge values ('-930867861212194235', '-6921073915022438226');
insert into edge values ('-930867861212194235', '-1809435218319636916');
insert into edge values ('-930867861212194235', '2034405500481468962');
insert into nodelabels values ('-1234522535774727039', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-1234522535774727039', 'startTime', '14');
insert into nodelabels values ('-1234522535774727039', 'status.code', '0');
insert into nodelabels values ('-1234522535774727039', 'serviceName', 'frontend');
insert into nodelabels values ('-8203515640243839454', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('-8203515640243839454', 'startTime', '16');
insert into nodelabels values ('-8203515640243839454', 'status.code', '-1');
insert into nodelabels values ('-8203515640243839454', 'serviceName', 'adservice');
insert into nodelabels values ('6565908139338660031', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('6565908139338660031', 'startTime', '11');
insert into nodelabels values ('6565908139338660031', 'status.code', '0');
insert into nodelabels values ('6565908139338660031', 'serviceName', 'frontend');
insert into nodelabels values ('-6318357647233343836', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('-6318357647233343836', 'startTime', '5');
insert into nodelabels values ('-6318357647233343836', 'status.code', '0');
insert into nodelabels values ('-6318357647233343836', 'serviceName', 'frontend');
insert into nodelabels values ('-930867861212194235', 'operationName', 'Recv./');
insert into nodelabels values ('-930867861212194235', 'startTime', '0');
insert into nodelabels values ('-930867861212194235', 'status.code', '0');
insert into nodelabels values ('-930867861212194235', 'serviceName', 'frontend');
insert into nodelabels values ('-7356443512962753532', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-7356443512962753532', 'startTime', '6');
insert into nodelabels values ('-7356443512962753532', 'status.code', '0');
insert into nodelabels values ('-7356443512962753532', 'serviceName', 'frontend');
insert into nodelabels values ('1738156930564948259', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('1738156930564948259', 'startTime', '13');
insert into nodelabels values ('1738156930564948259', 'status.code', '0');
insert into nodelabels values ('1738156930564948259', 'serviceName', 'frontend');
insert into nodelabels values ('2034405500481468962', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('2034405500481468962', 'startTime', '8');
insert into nodelabels values ('2034405500481468962', 'status.code', '0');
insert into nodelabels values ('2034405500481468962', 'serviceName', 'frontend');
insert into nodelabels values ('-5614338680861778839', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-5614338680861778839', 'startTime', '2');
insert into nodelabels values ('-5614338680861778839', 'status.code', '0');
insert into nodelabels values ('-5614338680861778839', 'serviceName', 'frontend');
insert into nodelabels values ('-6069098400674724724', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('-6069098400674724724', 'startTime', '17');
insert into nodelabels values ('-6069098400674724724', 'status.code', '-1');
insert into nodelabels values ('-6069098400674724724', 'serviceName', 'adservice');
insert into nodelabels values ('-1809435218319636916', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-1809435218319636916', 'startTime', '15');
insert into nodelabels values ('-1809435218319636916', 'status.code', '0');
insert into nodelabels values ('-1809435218319636916', 'serviceName', 'frontend');
insert into nodelabels values ('1887403816243541774', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('1887403816243541774', 'startTime', '3');
insert into nodelabels values ('1887403816243541774', 'status.code', '0');
insert into nodelabels values ('1887403816243541774', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-6921073915022438226', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-6921073915022438226', 'startTime', '12');
insert into nodelabels values ('-6921073915022438226', 'status.code', '0');
insert into nodelabels values ('-6921073915022438226', 'serviceName', 'frontend');
insert into nodelabels values ('1603721034602045395', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('1603721034602045395', 'startTime', '10');
insert into nodelabels values ('1603721034602045395', 'status.code', '0');
insert into nodelabels values ('1603721034602045395', 'serviceName', 'frontend');
insert into nodelabels values ('-1617887309932874826', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-1617887309932874826', 'startTime', '4');
insert into nodelabels values ('-1617887309932874826', 'status.code', '2');
insert into nodelabels values ('-1617887309932874826', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('4054847797995707831', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4054847797995707831', 'startTime', '9');
insert into nodelabels values ('4054847797995707831', 'status.code', '0');
insert into nodelabels values ('4054847797995707831', 'serviceName', 'frontend');
insert into nodelabels values ('2972285063214077752', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('2972285063214077752', 'startTime', '1');
insert into nodelabels values ('2972285063214077752', 'status.code', '0');
insert into nodelabels values ('2972285063214077752', 'serviceName', 'frontend');
insert into nodelabels values ('1105173489934661727', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('1105173489934661727', 'startTime', '7');
insert into nodelabels values ('1105173489934661727', 'status.code', '0');
insert into nodelabels values ('1105173489934661727', 'serviceName', 'frontend');

