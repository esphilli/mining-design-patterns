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
                insert into edge values ('4927579880357937031', '4071845108581251343');
insert into edge values ('8849526506207939980', '-8923484573022305158');
insert into edge values ('8849526506207939980', '-2794545687164038356');
insert into edge values ('-4513477860268787375', '2972503018089018720');
insert into edge values ('8849526506207939980', '6394865606325704724');
insert into edge values ('8849526506207939980', '-2587968412399841265');
insert into edge values ('8849526506207939980', '1763682217001439134');
insert into edge values ('-3222791152959361272', '-4513477860268787375');
insert into edge values ('8849526506207939980', '4927579880357937031');
insert into edge values ('8849526506207939980', '-3222791152959361272');
insert into nodelabels values ('2972503018089018720', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('2972503018089018720', 'startTime', '4');
insert into nodelabels values ('2972503018089018720', 'status.code', '2');
insert into nodelabels values ('2972503018089018720', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('4927579880357937031', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('4927579880357937031', 'startTime', '8');
insert into nodelabels values ('4927579880357937031', 'status.code', '0');
insert into nodelabels values ('4927579880357937031', 'serviceName', 'frontend');
insert into nodelabels values ('-3222791152959361272', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-3222791152959361272', 'startTime', '2');
insert into nodelabels values ('-3222791152959361272', 'status.code', '0');
insert into nodelabels values ('-3222791152959361272', 'serviceName', 'frontend');
insert into nodelabels values ('8849526506207939980', 'operationName', 'Recv./');
insert into nodelabels values ('8849526506207939980', 'startTime', '0');
insert into nodelabels values ('8849526506207939980', 'status.code', '0');
insert into nodelabels values ('8849526506207939980', 'serviceName', 'frontend');
insert into nodelabels values ('-2794545687164038356', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-2794545687164038356', 'startTime', '10');
insert into nodelabels values ('-2794545687164038356', 'status.code', '0');
insert into nodelabels values ('-2794545687164038356', 'serviceName', 'frontend');
insert into nodelabels values ('4071845108581251343', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('4071845108581251343', 'startTime', '9');
insert into nodelabels values ('4071845108581251343', 'status.code', '0');
insert into nodelabels values ('4071845108581251343', 'serviceName', 'shippingservice');
insert into nodelabels values ('-2587968412399841265', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-2587968412399841265', 'startTime', '1');
insert into nodelabels values ('-2587968412399841265', 'status.code', '0');
insert into nodelabels values ('-2587968412399841265', 'serviceName', 'frontend');
insert into nodelabels values ('-4513477860268787375', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-4513477860268787375', 'startTime', '3');
insert into nodelabels values ('-4513477860268787375', 'status.code', '0');
insert into nodelabels values ('-4513477860268787375', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('6394865606325704724', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('6394865606325704724', 'startTime', '7');
insert into nodelabels values ('6394865606325704724', 'status.code', '2');
insert into nodelabels values ('6394865606325704724', 'serviceName', 'frontend');
insert into nodelabels values ('-8923484573022305158', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-8923484573022305158', 'startTime', '6');
insert into nodelabels values ('-8923484573022305158', 'status.code', '0');
insert into nodelabels values ('-8923484573022305158', 'serviceName', 'frontend');
insert into nodelabels values ('1763682217001439134', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('1763682217001439134', 'startTime', '5');
insert into nodelabels values ('1763682217001439134', 'status.code', '0');
insert into nodelabels values ('1763682217001439134', 'serviceName', 'frontend');

