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
                insert into edge values ('-154772191851032700', '4357330564284564606');
insert into edge values ('-154772191851032700', '-3537562875679786452');
insert into edge values ('-154772191851032700', '-206361509403487761');
insert into edge values ('-154772191851032700', '-4889260134201496216');
insert into edge values ('-154772191851032700', '1813829240931048901');
insert into edge values ('-154772191851032700', '-7874790209052357705');
insert into edge values ('-154772191851032700', '172495930761762923');
insert into edge values ('-154772191851032700', '-998721939256510032');
insert into edge values ('-154772191851032700', '5433317103621278203');
insert into edge values ('-154772191851032700', '-5897361081303592829');
insert into edge values ('-154772191851032700', '-662299318082237849');
insert into edge values ('605800976100366653', '9220562219029607270');
insert into edge values ('-154772191851032700', '605800976100366653');
insert into edge values ('-998721939256510032', '-8637659097298778698');
insert into edge values ('-154772191851032700', '3428874372726301201');
insert into edge values ('9220562219029607270', '-5985258226759248728');
insert into edge values ('-8637659097298778698', '-8302915804716114550');
insert into nodelabels values ('-5897361081303592829', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-5897361081303592829', 'startTime', '1');
insert into nodelabels values ('-5897361081303592829', 'status.code', '0');
insert into nodelabels values ('-5897361081303592829', 'serviceName', 'frontend');
insert into nodelabels values ('-154772191851032700', 'operationName', 'Recv./');
insert into nodelabels values ('-154772191851032700', 'startTime', '0');
insert into nodelabels values ('-154772191851032700', 'status.code', '0');
insert into nodelabels values ('-154772191851032700', 'serviceName', 'frontend');
insert into nodelabels values ('1813829240931048901', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('1813829240931048901', 'startTime', '14');
insert into nodelabels values ('1813829240931048901', 'status.code', '0');
insert into nodelabels values ('1813829240931048901', 'serviceName', 'frontend');
insert into nodelabels values ('9220562219029607270', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('9220562219029607270', 'startTime', '3');
insert into nodelabels values ('9220562219029607270', 'status.code', '0');
insert into nodelabels values ('9220562219029607270', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-662299318082237849', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-662299318082237849', 'startTime', '11');
insert into nodelabels values ('-662299318082237849', 'status.code', '0');
insert into nodelabels values ('-662299318082237849', 'serviceName', 'frontend');
insert into nodelabels values ('-4889260134201496216', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-4889260134201496216', 'startTime', '13');
insert into nodelabels values ('-4889260134201496216', 'status.code', '0');
insert into nodelabels values ('-4889260134201496216', 'serviceName', 'frontend');
insert into nodelabels values ('-5985258226759248728', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-5985258226759248728', 'startTime', '4');
insert into nodelabels values ('-5985258226759248728', 'status.code', '2');
insert into nodelabels values ('-5985258226759248728', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-8302915804716114550', 'operationName', 'Retrieve Ads');
insert into nodelabels values ('-8302915804716114550', 'startTime', '17');
insert into nodelabels values ('-8302915804716114550', 'status.code', '-1');
insert into nodelabels values ('-8302915804716114550', 'serviceName', 'adservice');
insert into nodelabels values ('172495930761762923', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('172495930761762923', 'startTime', '9');
insert into nodelabels values ('172495930761762923', 'status.code', '0');
insert into nodelabels values ('172495930761762923', 'serviceName', 'frontend');
insert into nodelabels values ('-3537562875679786452', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-3537562875679786452', 'startTime', '7');
insert into nodelabels values ('-3537562875679786452', 'status.code', '0');
insert into nodelabels values ('-3537562875679786452', 'serviceName', 'frontend');
insert into nodelabels values ('-206361509403487761', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-206361509403487761', 'startTime', '8');
insert into nodelabels values ('-206361509403487761', 'status.code', '0');
insert into nodelabels values ('-206361509403487761', 'serviceName', 'frontend');
insert into nodelabels values ('-998721939256510032', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-998721939256510032', 'startTime', '15');
insert into nodelabels values ('-998721939256510032', 'status.code', '0');
insert into nodelabels values ('-998721939256510032', 'serviceName', 'frontend');
insert into nodelabels values ('3428874372726301201', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('3428874372726301201', 'startTime', '12');
insert into nodelabels values ('3428874372726301201', 'status.code', '0');
insert into nodelabels values ('3428874372726301201', 'serviceName', 'frontend');
insert into nodelabels values ('-8637659097298778698', 'operationName', 'Recv.hipstershop.AdService.GetAds');
insert into nodelabels values ('-8637659097298778698', 'startTime', '16');
insert into nodelabels values ('-8637659097298778698', 'status.code', '-1');
insert into nodelabels values ('-8637659097298778698', 'serviceName', 'adservice');
insert into nodelabels values ('-7874790209052357705', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-7874790209052357705', 'startTime', '10');
insert into nodelabels values ('-7874790209052357705', 'status.code', '0');
insert into nodelabels values ('-7874790209052357705', 'serviceName', 'frontend');
insert into nodelabels values ('5433317103621278203', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('5433317103621278203', 'startTime', '6');
insert into nodelabels values ('5433317103621278203', 'status.code', '0');
insert into nodelabels values ('5433317103621278203', 'serviceName', 'frontend');
insert into nodelabels values ('605800976100366653', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('605800976100366653', 'startTime', '2');
insert into nodelabels values ('605800976100366653', 'status.code', '0');
insert into nodelabels values ('605800976100366653', 'serviceName', 'frontend');
insert into nodelabels values ('4357330564284564606', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('4357330564284564606', 'startTime', '5');
insert into nodelabels values ('4357330564284564606', 'status.code', '0');
insert into nodelabels values ('4357330564284564606', 'serviceName', 'frontend');

