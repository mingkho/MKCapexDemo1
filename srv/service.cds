using { BusinessPartnerA2X } from './external/BusinessPartnerA2X.cds';

using { MKCapexDemo1 as my } from '../db/schema';

using MKCapexDemo1 from '../db/schema';

@path : '/service/MKCapexDemo1'
service MKCapexDemo1Service
{
    @odata.draft.enabled
    entity Capex as
        projection on my.Capex;

    @odata.draft.enabled
    entity Category as
        projection on my.Category;

    entity A_BusinessPartner as projection on BusinessPartnerA2X.A_BusinessPartner
    {
        BusinessPartner,
        FirstName,
        LastName
    };
}

annotate MKCapexDemo1Service with @requires :
[
    'authenticated-user'
];
