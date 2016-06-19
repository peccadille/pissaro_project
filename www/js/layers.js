	    var mbAttr = 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, ' +
				'<a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
				'Imagery © <a href="http://mapbox.com">Mapbox</a>';
            gaAttr = '<a href="http://gallica.fr">Gallica/BnF</a>' ;
						mbUrl = 'https://a.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}';
            osmUrl = 'http://mapwarper.net/maps/tile/9091/{z}/{x}/{y}.png';

	    var Rouen1889   = L.tileLayer(osmUrl, {id: 'http://mapwarper.net/maps/tile/9091/{z}/{x}/{y}.png', attribution: gaAttr}),
		    streets  = L.tileLayer(mbUrl, {id: 'peccadille.ne91c5di',   attribution: mbAttr, accessToken: 'pk.eyJ1IjoicGVjY2FkaWxsZSIsImEiOiJjaWVpNHRmZmwwMDJmdGJtOGFzaGZ6NHkyIn0.TEWfj8KDpIVFcSOot37mJg'});


		var map = L.map('map', {
			center: [49.43788,1.09236],
			zoom: 15,
			layers: [Rouen1889]
		});

		var baseLayers = {
			"Rouen en 1888": Rouen1889,
			"Rouen aujourd'hui": streets
		};



		L.control.layers(baseLayers).addTo(map);
