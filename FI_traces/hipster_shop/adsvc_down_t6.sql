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
                insert into edge values('-7133802600327721401', '-6023621218086209739');
insert into edge values('-7133802600327721401', '1357761751034648556');
insert into edge values('308591710303264689', '8463447272087372493');
insert into edge values('-7133802600327721401', '3120758460935646679');
insert into edge values('-7133802600327721401', '1046401608423995716');
insert into edge values('-7133802600327721401', '-4325575471848542433');
insert into edge values('-7133802600327721401', '1714064933113311966');
insert into edge values('-7133802600327721401', '7506855594890500697');
insert into edge values('-7133802600327721401', '2007039746487594436');
insert into edge values('2007039746487594436', '4337565295563533200');
insert into edge values('-7133802600327721401', '8213887768254191990');
insert into edge values('-7133802600327721401', '308591710303264689');
insert into edge values('-7133802600327721401', '-1121141698671579522');
insert into edge values('4337565295563533200', '-58456837147774742');
insert into edge values('-7133802600327721401', '-3871386727102520928');
insert into edge values('-7133802600327721401', '-3890705077328785607');
insert into edge values('-7133802600327721401', '4217369559933592139');
insert into edge values('-7133802600327721401', '-4314529407107190117');
insert into nodelabels values ('4337565295563533200', 'operationName', 'Recv.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('4337565295563533200', 'startTime', '3');
insert into nodelabels values ('4337565295563533200', 'status.code', '0');
insert into nodelabels values ('4337565295563533200', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('-4314529407107190117', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-4314529407107190117', 'startTime', '18');
insert into nodelabels values ('-4314529407107190117', 'status.code', '0');
insert into nodelabels values ('-4314529407107190117', 'serviceName', 'frontend');
insert into nodelabels values ('-4325575471848542433', 'operationName', 'Sent.hipstershop.CartService.GetCart');
insert into nodelabels values ('-4325575471848542433', 'startTime', '5');
insert into nodelabels values ('-4325575471848542433', 'status.code', '0');
insert into nodelabels values ('-4325575471848542433', 'serviceName', 'frontend');
insert into nodelabels values ('-3871386727102520928', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-3871386727102520928', 'startTime', '12');
insert into nodelabels values ('-3871386727102520928', 'status.code', '0');
insert into nodelabels values ('-3871386727102520928', 'serviceName', 'frontend');
insert into nodelabels values ('308591710303264689', 'operationName', 'Sent.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('308591710303264689', 'startTime', '16');
insert into nodelabels values ('308591710303264689', 'status.code', '0');
insert into nodelabels values ('308591710303264689', 'serviceName', 'frontend');
insert into nodelabels values ('-6023621218086209739', 'operationName', 'Sent.hipstershop.CurrencyService.GetSupportedCurrencies');
insert into nodelabels values ('-6023621218086209739', 'startTime', '1');
insert into nodelabels values ('-6023621218086209739', 'status.code', '0');
insert into nodelabels values ('-6023621218086209739', 'serviceName', 'frontend');
insert into nodelabels values ('-3890705077328785607', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-3890705077328785607', 'startTime', '6');
insert into nodelabels values ('-3890705077328785607', 'status.code', '0');
insert into nodelabels values ('-3890705077328785607', 'serviceName', 'frontend');
insert into nodelabels values ('1046401608423995716', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('1046401608423995716', 'startTime', '7');
insert into nodelabels values ('1046401608423995716', 'status.code', '0');
insert into nodelabels values ('1046401608423995716', 'serviceName', 'frontend');
insert into nodelabels values ('2007039746487594436', 'operationName', 'Sent.hipstershop.ProductCatalogService.ListProducts');
insert into nodelabels values ('2007039746487594436', 'startTime', '2');
insert into nodelabels values ('2007039746487594436', 'status.code', '0');
insert into nodelabels values ('2007039746487594436', 'serviceName', 'frontend');
insert into nodelabels values ('-7133802600327721401', 'operationName', 'Recv./');
insert into nodelabels values ('-7133802600327721401', 'startTime', '0');
insert into nodelabels values ('-7133802600327721401', 'status.code', '0');
insert into nodelabels values ('-7133802600327721401', 'serviceName', 'frontend');
insert into nodelabels values ('4217369559933592139', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('4217369559933592139', 'startTime', '9');
insert into nodelabels values ('4217369559933592139', 'status.code', '0');
insert into nodelabels values ('4217369559933592139', 'serviceName', 'frontend');
insert into nodelabels values ('8463447272087372493', 'operationName', 'Recv.hipstershop.ShippingService.GetQuote');
insert into nodelabels values ('8463447272087372493', 'startTime', '17');
insert into nodelabels values ('8463447272087372493', 'status.code', '0');
insert into nodelabels values ('8463447272087372493', 'serviceName', 'shippingservice');
insert into nodelabels values ('3120758460935646679', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('3120758460935646679', 'startTime', '13');
insert into nodelabels values ('3120758460935646679', 'status.code', '0');
insert into nodelabels values ('3120758460935646679', 'serviceName', 'frontend');
insert into nodelabels values ('7506855594890500697', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('7506855594890500697', 'startTime', '15');
insert into nodelabels values ('7506855594890500697', 'status.code', '2');
insert into nodelabels values ('7506855594890500697', 'serviceName', 'frontend');
insert into nodelabels values ('1714064933113311966', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('1714064933113311966', 'startTime', '14');
insert into nodelabels values ('1714064933113311966', 'status.code', '0');
insert into nodelabels values ('1714064933113311966', 'serviceName', 'frontend');
insert into nodelabels values ('-58456837147774742', 'operationName', 'Sent.hipstershop.AdService.GetAds');
insert into nodelabels values ('-58456837147774742', 'startTime', '4');
insert into nodelabels values ('-58456837147774742', 'status.code', '2');
insert into nodelabels values ('-58456837147774742', 'serviceName', 'productcatalogservice');
insert into nodelabels values ('1357761751034648556', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('1357761751034648556', 'startTime', '11');
insert into nodelabels values ('1357761751034648556', 'status.code', '0');
insert into nodelabels values ('1357761751034648556', 'serviceName', 'frontend');
insert into nodelabels values ('8213887768254191990', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('8213887768254191990', 'startTime', '8');
insert into nodelabels values ('8213887768254191990', 'status.code', '0');
insert into nodelabels values ('8213887768254191990', 'serviceName', 'frontend');
insert into nodelabels values ('-1121141698671579522', 'operationName', 'Sent.hipstershop.CurrencyService.Convert');
insert into nodelabels values ('-1121141698671579522', 'startTime', '10');
insert into nodelabels values ('-1121141698671579522', 'status.code', '0');
insert into nodelabels values ('-1121141698671579522', 'serviceName', 'frontend');

