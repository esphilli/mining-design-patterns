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
                insert into edge values ('-4433317180347077590', '8304790362416732417');
insert into edge values ('-5122555318558582465', '-3072062172322536579');
insert into edge values ('-4433317180347077590', '2102857200800623074');
insert into edge values ('-4433317180347077590', '8647172828848921005');
insert into edge values ('-4433317180347077590', '-1006643373916835801');
insert into edge values ('-5130224191937194511', '2108517118231978632');
insert into edge values ('-4433317180347077590', '-2851462829242992278');
insert into edge values ('-4433317180347077590', '-1711753181852183619');
insert into edge values ('-4433317180347077590', '945267967025692562');
insert into edge values ('2102857200800623074', '-5122555318558582465');
insert into edge values ('-4433317180347077590', '-8670054208086278523');
insert into edge values ('-4433317180347077590', '2444224339018595114');
insert into edge values ('-4433317180347077590', '8596376443746011106');
insert into edge values ('945267967025692562', '-5130224191937194511');
insert into edge values ('-4433317180347077590', '4640495401284138513');
insert into edge values ('-4433317180347077590', '-1547178119483069984');
insert into edge values ('-4433317180347077590', '11034779909761328');
insert into nodelabels values ('-1547178119483069984', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-1547178119483069984', 'startTime', '6');
insert into nodelabels values ('-1547178119483069984', 'status.code', '0');
insert into nodelabels values ('-1547178119483069984', 'serviceName', 'frontend');
insert into nodelabels values ('8304790362416732417', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8304790362416732417', 'startTime', '11');
insert into nodelabels values ('8304790362416732417', 'status.code', '0');
insert into nodelabels values ('8304790362416732417', 'serviceName', 'frontend');
insert into nodelabels values ('2102857200800623074', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('2102857200800623074', 'startTime', '2');
insert into nodelabels values ('2102857200800623074', 'status.code', '0');
insert into nodelabels values ('2102857200800623074', 'serviceName', 'frontend');
insert into nodelabels values ('8596376443746011106', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('8596376443746011106', 'startTime', '5');
insert into nodelabels values ('8596376443746011106', 'status.code', '0');
insert into nodelabels values ('8596376443746011106', 'serviceName', 'frontend');
insert into nodelabels values ('-8670054208086278523', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-8670054208086278523', 'startTime', '1');
insert into nodelabels values ('-8670054208086278523', 'status.code', '0');
insert into nodelabels values ('-8670054208086278523', 'serviceName', 'frontend');
insert into nodelabels values ('-1006643373916835801', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-1006643373916835801', 'startTime', '13');
insert into nodelabels values ('-1006643373916835801', 'status.code', '0');
insert into nodelabels values ('-1006643373916835801', 'serviceName', 'frontend');
insert into nodelabels values ('2108517118231978632', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('2108517118231978632', 'startTime', '17');
insert into nodelabels values ('2108517118231978632', 'status.code', '-1');
insert into nodelabels values ('2108517118231978632', 'serviceName', 'adservice');
insert into nodelabels values ('-4433317180347077590', 'operationName', 'Recv./');
insert into nodelabels values ('-4433317180347077590', 'startTime', '0');
insert into nodelabels values ('-4433317180347077590', 'status.code', '0');
insert into nodelabels values ('-4433317180347077590', 'serviceName', 'frontend');
insert into nodelabels values ('-2851462829242992278', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-2851462829242992278', 'startTime', '9');
insert into nodelabels values ('-2851462829242992278', 'status.code', '0');
insert into nodelabels values ('-2851462829242992278', 'serviceName', 'frontend');
insert into nodelabels values ('2444224339018595114', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('2444224339018595114', 'startTime', '14');
insert into nodelabels values ('2444224339018595114', 'status.code', '0');
insert into nodelabels values ('2444224339018595114', 'serviceName', 'frontend');
insert into nodelabels values ('8647172828848921005', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8647172828848921005', 'startTime', '8');
insert into nodelabels values ('8647172828848921005', 'status.code', '0');
insert into nodelabels values ('8647172828848921005', 'serviceName', 'frontend');
insert into nodelabels values ('-1711753181852183619', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-1711753181852183619', 'startTime', '10');
insert into nodelabels values ('-1711753181852183619', 'status.code', '0');
insert into nodelabels values ('-1711753181852183619', 'serviceName', 'frontend');
insert into nodelabels values ('11034779909761328', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('11034779909761328', 'startTime', '7');
insert into nodelabels values ('11034779909761328', 'status.code', '0');
insert into nodelabels values ('11034779909761328', 'serviceName', 'frontend');
insert into nodelabels values ('-5130224191937194511', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('-5130224191937194511', 'startTime', '16');
insert into nodelabels values ('-5130224191937194511', 'status.code', '-1');
insert into nodelabels values ('-5130224191937194511', 'serviceName', 'adservice');
insert into nodelabels values ('945267967025692562', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('945267967025692562', 'startTime', '15');
insert into nodelabels values ('945267967025692562', 'status.code', '0');
insert into nodelabels values ('945267967025692562', 'serviceName', 'frontend');
insert into nodelabels values ('4640495401284138513', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4640495401284138513', 'startTime', '12');
insert into nodelabels values ('4640495401284138513', 'status.code', '0');
insert into nodelabels values ('4640495401284138513', 'serviceName', 'frontend');
insert into nodelabels values ('-3072062172322536579', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-3072062172322536579', 'startTime', '4');
insert into nodelabels values ('-3072062172322536579', 'status.code', '2');
insert into nodelabels values ('-3072062172322536579', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-5122555318558582465', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-5122555318558582465', 'startTime', '3');
insert into nodelabels values ('-5122555318558582465', 'status.code', '0');
insert into nodelabels values ('-5122555318558582465', 'serviceName', 'productcatalogservice');

