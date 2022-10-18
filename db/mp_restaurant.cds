namespace mp_restaurants;

using { Currency } from '@sap/cds/common';
 
   
    entity Restaurant {
        key ID: Integer;
        name: String;
        adresse: String;
        strasse : String;
        hausnummer : Integer;
        plz : Integer;
        stadtteil : String;
        oeffnungszeiten : String;
        telefon : Integer64;
        website : String;
        gerichte : Association to many Gericht;
    }
    entity Gericht {
        key ID: Integer;
        kurzname: String;
        kurzbeschreibung: String;
        preis : Currency; 
        restaurant : Association to Restaurant;
    }
