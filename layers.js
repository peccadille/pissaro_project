	    var mbAttr = 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, ' +
				'<a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
				'Imagery © <a href="http://mapbox.com">Mapbox</a>';
            gaAttr = '<a href="http://gallica.fr">Gallica/BnF</a>' ;
			mbUrl = 'https://{s}.tiles.mapbox.com/v3/{id}/{z}/{x}/{y}.png';
            osmUrl = 'http://mapwarper.net/maps/tile/9091/{z}/{x}/{y}.png';

	    var Rouen1889   = L.tileLayer(osmUrl, {id: 'http://mapwarper.net/maps/tile/9091/{z}/{x}/{y}.png', attribution: gaAttr}),
		    streets  = L.tileLayer(mbUrl, {id: 'examples.map-i875mjb7',   attribution: mbAttr});


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
