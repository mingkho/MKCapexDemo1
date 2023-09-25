namespace MKCapexDemo1;

using { BusinessPartnerA2X } from '../srv/external/BusinessPartnerA2X.cds';

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Capex
{
    key ID : UUID
        @Core.Computed;
    description : String(100);
    totalcost : Integer;
    category : Association to one Category;
    BusinessPartner : Association to one BusinessPartnerA2X.A_BusinessPartner;
}

entity Category
{
    key ID : Integer;
    name : String(100);
    capex : Association to many Capex on capex.category = $self;
}
