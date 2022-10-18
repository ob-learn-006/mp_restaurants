using CooleRestaurantsBerlinService as service from '../../srv/mp_restaurant_srv';

annotate service.Restaurant with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'strasse',
            Value : strasse,
        },
        {
            $Type : 'UI.DataField',
            Label : 'hausnummer',
            Value : hausnummer,
        },
        {
            $Type : 'UI.DataField',
            Label : 'plz',
            Value : plz,
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
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'strasse',
                Value : strasse,
            },
            {
                $Type : 'UI.DataField',
                Label : 'hausnummer',
                Value : hausnummer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'plz',
                Value : plz,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stadtteil',
                Value : stadtteil,
            },
            {
                $Type : 'UI.DataField',
                Label : 'oeffnungszeiten',
                Value : oeffnungszeiten,
            },
            {
                $Type : 'UI.DataField',
                Label : 'telefon',
                Value : telefon,
            },
            {
                $Type : 'UI.DataField',
                Label : 'website',
                Value : website,
            },
            {
                $Type : 'UI.DataField',
                Label : 'gerichte_ID',
                Value : gerichte_ID,
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
