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
                insert into edge values ('6921747143332376958', '3255414359682051868');
insert into edge values ('6921747143332376958', '-2251749739752005746');
insert into edge values ('6921747143332376958', '-6210456777961656322');
insert into edge values ('6921747143332376958', '866699569147817711');
insert into edge values ('-6608811471035648792', '9050822583232428');
insert into edge values ('6921747143332376958', '3361888089038429768');
insert into edge values ('6921747143332376958', '6844697841788126507');
insert into edge values ('6921747143332376958', '-809839763552577612');
insert into edge values ('3255414359682051868', '-6608811471035648792');
insert into edge values ('6921747143332376958', '3922225929635183138');
insert into edge values ('6921747143332376958', '4330251214913099780');
insert into edge values ('6921747143332376958', '-2697044207289507230');
insert into edge values ('6921747143332376958', '6696006205984515529');
insert into edge values ('6921747143332376958', '8720890973828154041');
insert into edge values ('6921747143332376958', '-3943925362578986666');
insert into edge values ('6921747143332376958', '-6633480586069564822');
insert into edge values ('6921747143332376958', '7324158678094231405');
insert into edge values ('-809839763552577612', '-5893852901852672268');
insert into nodelabels values ('4330251214913099780', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4330251214913099780', 'startTime', '11');
insert into nodelabels values ('4330251214913099780', 'status.code', '0');
insert into nodelabels values ('4330251214913099780', 'serviceName', 'frontend');
insert into nodelabels values ('-2251749739752005746', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-2251749739752005746', 'startTime', '15');
insert into nodelabels values ('-2251749739752005746', 'status.code', '2');
insert into nodelabels values ('-2251749739752005746', 'serviceName', 'frontend');
insert into nodelabels values ('3255414359682051868', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('3255414359682051868', 'startTime', '2');
insert into nodelabels values ('3255414359682051868', 'status.code', '0');
insert into nodelabels values ('3255414359682051868', 'serviceName', 'frontend');
insert into nodelabels values ('3922225929635183138', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('3922225929635183138', 'startTime', '9');
insert into nodelabels values ('3922225929635183138', 'status.code', '0');
insert into nodelabels values ('3922225929635183138', 'serviceName', 'frontend');
insert into nodelabels values ('6844697841788126507', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('6844697841788126507', 'startTime', '13');
insert into nodelabels values ('6844697841788126507', 'status.code', '0');
insert into nodelabels values ('6844697841788126507', 'serviceName', 'frontend');
insert into nodelabels values ('9050822583232428', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('9050822583232428', 'startTime', '4');
insert into nodelabels values ('9050822583232428', 'status.code', '2');
insert into nodelabels values ('9050822583232428', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-809839763552577612', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-809839763552577612', 'startTime', '16');
insert into nodelabels values ('-809839763552577612', 'status.code', '0');
insert into nodelabels values ('-809839763552577612', 'serviceName', 'frontend');
insert into nodelabels values ('8720890973828154041', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8720890973828154041', 'startTime', '12');
insert into nodelabels values ('8720890973828154041', 'status.code', '0');
insert into nodelabels values ('8720890973828154041', 'serviceName', 'frontend');
insert into nodelabels values ('3361888089038429768', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('3361888089038429768', 'startTime', '6');
insert into nodelabels values ('3361888089038429768', 'status.code', '0');
insert into nodelabels values ('3361888089038429768', 'serviceName', 'frontend');
insert into nodelabels values ('6696006205984515529', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('6696006205984515529', 'startTime', '1');
insert into nodelabels values ('6696006205984515529', 'status.code', '0');
insert into nodelabels values ('6696006205984515529', 'serviceName', 'frontend');
insert into nodelabels values ('-3943925362578986666', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-3943925362578986666', 'startTime', '8');
insert into nodelabels values ('-3943925362578986666', 'status.code', '0');
insert into nodelabels values ('-3943925362578986666', 'serviceName', 'frontend');
insert into nodelabels values ('-2697044207289507230', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-2697044207289507230', 'startTime', '14');
insert into nodelabels values ('-2697044207289507230', 'status.code', '0');
insert into nodelabels values ('-2697044207289507230', 'serviceName', 'frontend');
insert into nodelabels values ('-6608811471035648792', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('-6608811471035648792', 'startTime', '3');
insert into nodelabels values ('-6608811471035648792', 'status.code', '0');
insert into nodelabels values ('-6608811471035648792', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-6633480586069564822', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-6633480586069564822', 'startTime', '10');
insert into nodelabels values ('-6633480586069564822', 'status.code', '0');
insert into nodelabels values ('-6633480586069564822', 'serviceName', 'frontend');
insert into nodelabels values ('7324158678094231405', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('7324158678094231405', 'startTime', '5');
insert into nodelabels values ('7324158678094231405', 'status.code', '0');
insert into nodelabels values ('7324158678094231405', 'serviceName', 'frontend');
insert into nodelabels values ('866699569147817711', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('866699569147817711', 'startTime', '7');
insert into nodelabels values ('866699569147817711', 'status.code', '0');
insert into nodelabels values ('866699569147817711', 'serviceName', 'frontend');
insert into nodelabels values ('-5893852901852672268', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('-5893852901852672268', 'startTime', '17');
insert into nodelabels values ('-5893852901852672268', 'status.code', '0');
insert into nodelabels values ('-5893852901852672268', 'serviceName', 'shippingservice');
insert into nodelabels values ('-6210456777961656322', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-6210456777961656322', 'startTime', '18');
insert into nodelabels values ('-6210456777961656322', 'status.code', '0');
insert into nodelabels values ('-6210456777961656322', 'serviceName', 'frontend');
insert into nodelabels values ('6921747143332376958', 'operationName', 'Recv./');
insert into nodelabels values ('6921747143332376958', 'startTime', '0');
insert into nodelabels values ('6921747143332376958', 'status.code', '0');
insert into nodelabels values ('6921747143332376958', 'serviceName', 'frontend');

