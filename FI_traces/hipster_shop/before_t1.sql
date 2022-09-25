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
                insert into edge values ('862633951172052421', '7287309515254568786');
insert into edge values ('-7205502771032195512', '6644431907171651013');
insert into edge values ('7287309515254568786', '-7205502771032195512');
insert into edge values ('7815357640798382301', '2981348270474614289');
insert into edge values ('8164589395093084908', '7815357640798382301');
insert into edge values ('6644431907171651013', '7705793861004551886');
insert into edge values ('862633951172052421', '3381655088831122847');
insert into edge values ('862633951172052421', '8164589395093084908');
insert into edge values ('862633951172052421', '-8249404816665574733');
insert into edge values ('7705793861004551886', '3195251919016601980');
insert into edge values ('862633951172052421', '-7257880500425606641');
insert into nodelabels values ('6644431907171651013', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('6644431907171651013', 'startTime', '4');
insert into nodelabels values ('6644431907171651013', 'status.code', '0');
insert into nodelabels values ('6644431907171651013', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('862633951172052421', 'operationName', 'Recv./');
insert into nodelabels values ('862633951172052421', 'startTime', '0');
insert into nodelabels values ('862633951172052421', 'status.code', '0');
insert into nodelabels values ('862633951172052421', 'serviceName', 'frontend');
insert into nodelabels values ('-7205502771032195512', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-7205502771032195512', 'startTime', '3');
insert into nodelabels values ('-7205502771032195512', 'status.code', '0');
insert into nodelabels values ('-7205502771032195512', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('8164589395093084908', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('8164589395093084908', 'startTime', '9');
insert into nodelabels values ('8164589395093084908', 'status.code', '0');
insert into nodelabels values ('8164589395093084908', 'serviceName', 'frontend');
insert into nodelabels values ('7705793861004551886', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('7705793861004551886', 'startTime', '5');
insert into nodelabels values ('7705793861004551886', 'status.code', '-1');
insert into nodelabels values ('7705793861004551886', 'serviceName', 'adservice');
insert into nodelabels values ('-7257880500425606641', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-7257880500425606641', 'startTime', '8');
insert into nodelabels values ('-7257880500425606641', 'status.code', '0');
insert into nodelabels values ('-7257880500425606641', 'serviceName', 'frontend');
insert into nodelabels values ('2981348270474614289', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('2981348270474614289', 'startTime', '11');
insert into nodelabels values ('2981348270474614289', 'status.code', '-1');
insert into nodelabels values ('2981348270474614289', 'serviceName', 'adservice');
insert into nodelabels values ('7287309515254568786', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('7287309515254568786', 'startTime', '2');
insert into nodelabels values ('7287309515254568786', 'status.code', '0');
insert into nodelabels values ('7287309515254568786', 'serviceName', 'frontend');
insert into nodelabels values ('-8249404816665574733', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('-8249404816665574733', 'startTime', '7');
insert into nodelabels values ('-8249404816665574733', 'status.code', '0');
insert into nodelabels values ('-8249404816665574733', 'serviceName', 'frontend');
insert into nodelabels values ('3195251919016601980', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('3195251919016601980', 'startTime', '6');
insert into nodelabels values ('3195251919016601980', 'status.code', '-1');
insert into nodelabels values ('3195251919016601980', 'serviceName', 'adservice');
insert into nodelabels values ('7815357640798382301', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('7815357640798382301', 'startTime', '10');
insert into nodelabels values ('7815357640798382301', 'status.code', '-1');
insert into nodelabels values ('7815357640798382301', 'serviceName', 'adservice');
insert into nodelabels values ('3381655088831122847', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('3381655088831122847', 'startTime', '1');
insert into nodelabels values ('3381655088831122847', 'status.code', '0');
insert into nodelabels values ('3381655088831122847', 'serviceName', 'frontend');

