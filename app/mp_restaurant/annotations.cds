using CooleRestaurantsBerlinService as service from '../../srv/mp_restaurant_srv';

annotate service.Restaurant with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Id}',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Restaurantname',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Straße',
            Value : strasse,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Hausnummer',
            Value : hausnummer,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Postleitzahl',
            Value : plz,
        },
        {
            $Type : 'UI.DataField',
            Value : stadtteil,
        },
        {
            $Type : 'UI.DataField',
            Value : oeffnungszeiten,
        },
    ]
);
annotate service.Restaurant with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Restaurant-Name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Straße',
                Value : strasse,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Hausnummer',
                Value : hausnummer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Postleitzahl',
                Value : plz,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Stadtteil',
                Value : stadtteil,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Öffnungszeiten',
                Value : oeffnungszeiten,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Telefonkontakt',
                Value : telefon,
            },
            {
                $Type : 'UI.DataField',
                Value : gerichte.restaurant.gerichte.ID,
                Label : 'Gericht-ID',
            },
            {
                $Type : 'UI.DataField',
                Value : gerichte.restaurant.gerichte.kurzname,
                Label : 'Gericht',
            },
            {
                $Type : 'UI.DataField',
                Value : gerichte.restaurant.gerichte.preis_code,
                Label : 'Preis',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.Restaurant with @(
    UI.SelectionFields : [
        hausnummer,
        ID,
        oeffnungszeiten,
        name,
        plz,
        strasse,
        stadtteil,
        telefon,
    ]
);
annotate service.Restaurant with {
    hausnummer @Common.Label : 'Hausnummer'
};
annotate service.Restaurant with {
    ID @Common.Label : 'Restaurant-ID'
};
annotate service.Restaurant with {
    oeffnungszeiten @Common.Label : 'Öffnungszeiten'
};
annotate service.Restaurant with {
    name @Common.Label : 'Restaurant-Name'
};
annotate service.Restaurant with {
    plz @Common.Label : 'Postleitzahl'
};
annotate service.Restaurant with {
    strasse @Common.Label : 'Straße'
};
annotate service.Restaurant with {
    stadtteil @Common.Label : 'Stadtteil'
};
annotate service.Restaurant with {
    telefon @Common.Label : 'Telefonkontakt'
};
annotate service.Gericht with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'gerichte',
            ID : 'gerichte',
            Target : '@UI.Identification',
        },
    ],
    UI.Identification : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },{
            $Type : 'UI.DataField',
            Value : kurzname,
            Label : 'Gericht',
        },{
            $Type : 'UI.DataField',
            Value : preis_code,
        },{
            $Type : 'UI.DataField',
            Value : restaurant_ID,
            Label : 'restaurant_ID',
        },{
            $Type : 'UI.DataField',
            Value : restaurant.name,
        },{
            $Type : 'UI.DataField',
            Value : restaurant.stadtteil,
        },]
);
