 using mp_restaurants from '../db/mp_restaurant';

 service CooleRestaurantsBerlinService {

    entity Restaurant as projection on mp_restaurants.Restaurant;
    entity Gericht as projection on mp_restaurants.Gericht;
 }
