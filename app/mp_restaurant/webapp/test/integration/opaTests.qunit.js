sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'mprestaurant/test/integration/FirstJourney',
		'mprestaurant/test/integration/pages/RestaurantList',
		'mprestaurant/test/integration/pages/RestaurantObjectPage',
		'mprestaurant/test/integration/pages/GerichtObjectPage'
    ],
    function(JourneyRunner, opaJourney, RestaurantList, RestaurantObjectPage, GerichtObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('mprestaurant') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRestaurantList: RestaurantList,
					onTheRestaurantObjectPage: RestaurantObjectPage,
					onTheGerichtObjectPage: GerichtObjectPage
                }
            },
            opaJourney.run
        );
    }
);