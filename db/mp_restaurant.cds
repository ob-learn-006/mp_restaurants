namespace mp_restaurants;

using { Currency } from '@sap/cds/common';
   
    entity Restaurant {
        key ID: Integer;
        name: String;
        strasse : String;
        hausnummer : Integer;
        plz : Integer;
        stadtteil : String;
        oeffnungszeiten : String;
        telefon : Integer64;
        website : String;
        gerichte : Association to many Gericht on gerichte.restaurant = $self;
    }
    entity Gericht {
        key ID: Integer;
        kurzname: String;
        preis : Currency; 
        restaurant : Association to Restaurant;
    }
