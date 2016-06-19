var MarkerIcon = L.icon({
	iconUrl: 'ico/marker-navy.png',
	iconAnchor: [16, 30],
	popupAnchor: [0, -32]
});
var MarkerIcon2 = L.icon({
	iconUrl: 'ico/marker-gray.png',
	iconAnchor: [16, 30],
	popupAnchor: [0, -32]
});
//je déclare le layer qui reçoit les markers
var markers_layer = new L.FeatureGroup();
map.addLayer(markers_layer);

function sendAjaxForm(formulaire){
	var postData = formulaire.serializeArray();
	var formURL = formulaire.attr("action");
	$.ajax(
	{
			url : formURL,
			type: "POST",
			data : postData,
			success:function(data, textStatus, jqXHR)
			{
		//Je nettoie le layer qui reçoit les markers
		markers_layer.clearLayers();
		/*Je boucle sur le tableau */
		for (var i = 0; i < data.length ; i++)
		{

			var MarkLocation = new L.LatLng(data[i].pov_latitude, data[i].pov_longitude);
			var marker = new L.marker(MarkLocation, {icon: MarkerIcon}).addTo(map);

			// Définition du contenu du popup
			txtpop="<b>Lieu sélectionné : </b>";
			pov_name="";
			pov_name= pov_name + data[i].pov_title;
			txtpop += pov_name;

			marker.bindPopup(txtpop);
			marker.pov_ind = i;
			marker.pov_name = pov_name;
			marker.on("click", function(e) {

				// code pour le clic

				tmp = e.target.pov_ind;
				name_pov = e.target.pov_name;

				// Génération de la liste des oeuvres reliées au POV cliqué
					//Supprimer les oeuvres déjà présentes
					var oeuvre = document.getElementById('selected_pov_artworks');
					while (oeuvre.firstChild) {
						oeuvre.removeChild(oeuvre.firstChild);
					}

					// suppression de l'oeuvre ou les détails du POV précédemment affiché
					var oeuvre_sel = document.getElementById('selected_artwork');
					while (oeuvre_sel.firstChild) {
						oeuvre_sel.removeChild(oeuvre_sel.firstChild);
					}

					//affichage le titre du POV
					var newpov_name = document.createElement('h3');

					document.getElementById('selected_pov_artworks').appendChild(newpov_name);

						var newpov_nameText = document.createTextNode(name_pov);

						newpov_name.appendChild(newpov_nameText);

					//affichage des infos descriptives sur le POV
					var newpov_name = document.createElement('h3');

					document.getElementById('selected_artwork').appendChild(newpov_name);

					var newpov_nameText = document.createTextNode(name_pov);

					newpov_name.appendChild(newpov_nameText);

					photo_pov = data[tmp].pov_photo;

					var newpovImage = document.createElement('img');

					newpovImage.src = photo_pov;
					newpovImage.className = 'apercu';

					document.getElementById('selected_artwork').appendChild(newpovImage);

					text_pov = data[tmp].pov_text;

					var newpov_text = document.createElement('p');

					document.getElementById('selected_artwork').appendChild(newpov_text);

						var newpov_textText = document.createTextNode(text_pov);

						newpov_text.appendChild(newpov_textText);


					//créé la nouvelle de résultats
				for (var j = 0; j < data[tmp].artworks.length; j++) {

					// affichages des vignettes
						photo_aw = data[tmp].artworks[j].artwork_photo;

						var newvignette = document.createElement('img');

						newvignette.src = photo_aw;
						newvignette.id = 'id_'+j;
						newvignette.className = 'img-rounded vignette';

						document.getElementById('selected_pov_artworks').appendChild(newvignette);

						//Affichage de la notice liée à l'oeuvre sélectionnée.

						var display_artwork = document.getElementById('id_'+j);
						display_artwork.artwork_ind = j;
						display_artwork.pov_ind = tmp ;
						console.log(display_artwork.artwork_ind);


							display_artwork.addEventListener('click', function() {
								console.log(this.artwork_ind);
								// suppression de l'oeuvre précédemment affichée
								var oeuvre_sel = document.getElementById('selected_artwork');
								while (oeuvre_sel.firstChild) {
									oeuvre_sel.removeChild(oeuvre_sel.firstChild);
								}
							//afficher la dernière oeuvre sélectionnée
								//Récupération des éléments
									title_artwork = data[this.pov_ind].artworks[this.artwork_ind].artwork_title;
									infos_artwork = data[this.pov_ind].artworks[this.artwork_ind].stay_year + ", " + data[this.pov_ind].artworks[this.artwork_ind].artwork_coll;
									photo_artwork = data[this.pov_ind].artworks[this.artwork_ind].artwork_photo;

								//Affichage du titre
									var newTitle = document.createElement('h3');

									document.getElementById('selected_artwork').appendChild(newTitle);

									var newTitleText = document.createTextNode(title_artwork);

									newTitle.appendChild(newTitleText);

								//Affichage des détails du cartel
									var newParagraph = document.createElement('p');

									document.getElementById('selected_artwork').appendChild(newParagraph);

									var newParagraphText = document.createTextNode(infos_artwork);

									newParagraph.appendChild(newParagraphText);

								//Affichage de l'image
									var newImage = document.createElement('img');

									newImage.src = photo_artwork;
									newImage.className = 'apercu';

									document.getElementById('selected_artwork').appendChild(newImage);

							}, false);

					}
				console.log(list_aw);
				e.target.setIcon(MarkerIcon2);

			});

			//on groupe tous les marqueurs sur un layer
			markers_layer.addLayer(marker);
		}
		// on ajoute le layer avec tous les markers à la carte
			},
			error: function(jqXHR, textStatus, errorThrown)
			{
					//if fails
			}
	});
}


//callback handler for form submit
$("#ajaxform").submit(function(e)
{
    e.preventDefault(); //STOP default action
		sendAjaxForm($("#ajaxform"));
});

//lancement du formulaire par défaut au chargement de la page
sendAjaxForm($("#ajaxform"));
