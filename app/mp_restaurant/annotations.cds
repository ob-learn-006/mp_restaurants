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
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Gerichte',
            ID : 'gerichte',
            Target : 'gerichte/@UI.LineItem#gerichte',
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
            Label : 'Gerichte-Infos',
            ID : 'gerichte',
            Target : '@UI.Identification',
        },
    ],
    UI.Identification : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'Gerichte-ID',
        },{
            $Type : 'UI.DataField',
            Value : kurzname,
            Label : 'Gericht',
        },{
            $Type : 'UI.DataField',
            Value : preis_code,
            Label : 'Preis in EUR',
        },{
            $Type : 'UI.DataField',
            Value : restaurant.name,
        },
        {
            $Type : 'UI.DataField',
            Value : restaurant.gerichte.restaurant.oeffnungszeiten,
        },
        {
            $Type : 'UI.DataField',
            Value : restaurant.gerichte.restaurant.telefon,
        },{
            $Type : 'UI.DataField',
            Value : restaurant.gerichte.restaurant.strasse,
        },
        {
            $Type : 'UI.DataField',
            Value : restaurant.gerichte.restaurant.hausnummer,
        },
        {
            $Type : 'UI.DataField',
            Value : restaurant.gerichte.restaurant.plz,
        },
        {
            $Type : 'UI.DataField',
            Value : restaurant.stadtteil,
        },]
);
annotate service.Gericht with @(
    UI.LineItem #gerichte : [
        {
            $Type : 'UI.DataField',
            Value : restaurant.gerichte.ID,
            Label : 'Gerichte-ID',
        },{
            $Type : 'UI.DataField',
            Value : restaurant.gerichte.kurzname,
            Label : 'Gerichtname',
            ![@UI.Importance] : #High,
        },{
            $Type : 'UI.DataField',
            Value : restaurant.gerichte.preis_code,
            Label : 'Preis in EUR',
        },]
);