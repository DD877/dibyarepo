using {zcapm.db as zcapm} from '../db/schema';

service CatalogService @(path : '/srv') {

    entity Sales as
        select from zcapm.Sales {*};

};
annotate CatalogService.Sales with @UI : {
    LineItem : [
        {Value : id,      Label : 'ID'},
        {Value : region,  Label : 'Region'},
        {Value : country, Label : 'Country'},
        {Value : amount,  Label : 'Amount'}
    ]
};