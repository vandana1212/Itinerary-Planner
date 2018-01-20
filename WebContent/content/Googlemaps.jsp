<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Distance finder</title>
<meta type="description" content="Find the distance between two places on the map and the shortest route."/>
<script src="http:/maps.google.com/maps?file=api&v=2&key="AIzaSyA7bzhPThdm4yhLEezof4UjREakdDu6_w8" type="text/javascript"></script>
<script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>


    var geocoder, location1, location2;


    var directionDisplay;
    var directionsService = new google.maps.DirectionsService();
    var map;
    
    function initialize() {

      directionsDisplay = new google.maps.DirectionsRenderer();

      var chicago = new google.maps.LatLng(41.850033, -87.6500523);
      var myOptions = {
        zoom:7,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        center: chicago
      }
    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
    directionsDisplay.setMap(map);

    geocoder = new GClientGeocoder();

}

function showLocation() {
		geocoder.getLocations(document.forms[0].address1.value, function (response) {
			if (!response || response.Status.code != 200) {
				alert("Sorry, your start addess is required");
			} else {
				location1 = {lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address};
				geocoder.getLocations(document.forms[0].address2.value, function (response) {
					if (!response || response.Status.code != 200) {
						alert("Sorry, your end address is required");
					} else {
						location2 = {lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address};
						calculateDistance();

					}
				});
			}
		});
	}

function calcRoute() {
    var start = document.getElementById("start").value;
    var end = document.getElementById("end").value;
    var request = {
        origin:start,
        destination:end,
        travelMode: google.maps.DirectionsTravelMode.DRIVING
    };
    directionsService.route(request, function(response, status) {
      if (status == google.maps.DirectionsStatus.OK) {
        directionsDisplay.setDirections(response);
      }
    });
}

function calculateDistance()
	{
		try
		{
			var glatlng1 = new GLatLng(location1.lat, location1.lon);
			var glatlng2 = new GLatLng(location2.lat, location2.lon);
			var miledistance = glatlng1.distanceFrom(glatlng2, 3959).toFixed(1);
			var kmdistance = (miledistance * 1.609344).toFixed(1);
			document.getElementById('results').innerHTML = 'Address 1: ' + location1.address + ' (' + location1.lat + ':' + location1.lon + ')<br />Address 2: ' + location2.address + ' (' + location2.lat + ':' + location2.lon + ')<br />Distance: ' + miledistance + ' miles (or ' + kmdistance + ' kilometers)<br/>';
<body onload="initialize()">

<form action="#" onsubmit="showLocation();calcRoute(); return false;">

Start: <input id="start" type="text" name="address1" value="55423" class="address_input" size="5" />

End: <input id="end" type="text" name="address2" value="55404" class="address_input" size="5" />

Dwelling:
<select id="price_per_mile">
          <option value="1.00">1 Bedroom Apartment</option>
          <option value="1.50">2 Bedroom Apartment</option>
          <option value="2.00">3 Bedroom Apartment</option>
          <option value="2.50">1 Bedroom Home</option>
          <option value="3.00">2 Bedroom Home</option>
          <option value="4.00">3 Bedroom Home</option>
          <option value="4.50">Small Office Space</option>
          <option value="5.00">Medium Office Space</option>
          <option value="5.50">Large Office Space</option>
</select>

Fee: <input id="admin_fee" type="text" name="admin-fee" value="" class="address_input" size="5" />

<input type="submit" name="find" value="Search" />

</form>

    <p><strong>Distance Results:</strong><br/><span id="results"></span></p>
    <p><strong>Price Results:</strong><br/><span id="price"></span></p>

    <div id="map_canvas" style="top:265px;"></div>

</body>

</html>