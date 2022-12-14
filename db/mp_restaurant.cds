namespace mp_restaurants;

  
    entity Restaurant {
        key ID: Integer;
        name: String;
        strasse : String;
        hausnummer : Integer;
        plz : Integer;
        stadtteil : String;
        oeffnungszeiten : String;
        telefon : String;
        gerichte : Association to many Gericht on gerichte.restaurant = $self;
    }
    entity Gericht {
        key ID: Integer;
        kurzname: String;
        preis : String; 
        restaurant : Association to Restaurant;
    }
