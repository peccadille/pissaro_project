var MarkerIcon = L.icon({iconUrl: 'ico/marker-navy.png'});
var MarkerIcon2 = L.icon({iconUrl: 'ico/marker-gray.png'});



//callback handler for form submit
$("#ajaxform").submit(function(e)
{
    e.preventDefault(); //STOP default action
    var postData = $(this).serializeArray();
    var formURL = $(this).attr("action");
    $.ajax(
    {
        url : formURL,
        type: "POST",
        data : postData,
        success:function(data, textStatus, jqXHR)
        {
			/*Je boucle sur le tableau */

			for (var i = 0; i < data.length ; i++)
			{

				var MarkLocation = new L.LatLng(data[i].pov_latitude, data[i].pov_longitude);
				var marker = new L.marker(MarkLocation, {icon: MarkerIcon}).addTo(map);

				// on rajoute un popup sur le marqueur
				txtpop="<b>liste des tableaux associés à ce point de vue : </b></br> ";
				list_artworks="";

				for (var j = 0; j < data[i].artworks.length; j++) {

					list_artworks = list_artworks + data[i].artworks[j].artwork_title + " </br>";

				}
				txtpop += list_artworks;


				marker.bindPopup(txtpop);
				marker.pov_ind = i;
				marker.on("click", function(e) {

					// code pour le clic

					tmp = e.target.pov_ind;
					list_aw="";
					console.log(tmp);
					console.log(data[tmp]);
					console.log(data[tmp].pov_latitude);

					// je génère la liste des oeuvres reliées au pov cliqué

					for (var j = 0; j < data[tmp].artworks.length; j++) {

						list_aw = data[tmp].artworks[j].artwork_title;

						infos_artwork = data[tmp].artworks[j].artwork_title + " </br> " + data[tmp].artworks[j].stay_year;

						var newParagraph = document.createElement('p');

						newParagraph.id = 'id_'+j;

						document.getElementById('selected_pov_artworks').appendChild(newParagraph);

			  			var newParagraphText = document.createTextNode(list_aw);

			  			newParagraph.appendChild(newParagraphText);

			  			//Je crée mon événement sur le click d'un titre d'oeuvre

			  			var display_artwork = document.getElementById('id_'+j);

			  				display_artwork.addEventListener('click', function() {

								var newParagraph = document.createElement('p');

								document.getElementById('selected_artwork').appendChild(newParagraph);

								var newParagraphText = document.createTextNode(infos_artwork);

								newParagraph.appendChild(newParagraphText);

			  				}, false);

						}
					console.log(list_aw);
					e.target.setIcon(MarkerIcon2);

				});

				// on ajoute le marqueur à la carte
				map.addLayer(marker);
			}

       	},
        error: function(jqXHR, textStatus, errorThrown)
        {
            //if fails
        }
    });
    e.unbind(); //unbind. to stop multiple form submit.
});
