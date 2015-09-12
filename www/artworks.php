<?php
include("includes/connexion.php");

header('Content-Type: application/json');


include 'defines.php'; // définitions statiques

//pour chaque catégorie de critères, je regarde ceux qui ont été sélectionnés et je les ajoute au tableau correspondant

$selected_weathers = array();

foreach($weathers as $weather)
{

	if(isset($_POST[$weather]))
	{
		array_push($selected_weathers, $weather );
	}
}

$selected_times = array();

foreach($times as $timee)
{
	if(isset($_POST[$timee]))
	{
		array_push($selected_times, $timee );
	}
}

$selected_stays = array();

foreach($stays as $stay)
{
	if(isset($_POST[$stay]))
	{
		array_push($selected_stays, $stay );
	}
}

//Je compare mes tableaux de critères sélectionnés à la liste des critères existants

$result_weathers=count($selected_weathers);
$values_weathers=count($weathers);
if ($values_weathers==$result_weathers){
	unset($selected_weathers);
}

$result_times=count($selected_times);
$values_times=count($times);
if ($values_times==$result_times){
	unset($selected_times);
}

$result_stays=count($selected_stays);
$values_stays=count($stays);
if ($values_stays==$result_stays){
	unset($selected_stays);
}

//je définis ma requête de base
$req_base="SELECT pov.id AS pov_id, pov.lat AS pov_latitude, pov.lng AS pov_longitude, artwork.id AS artwork_id, artwork.title AS artwork_title, artwork.date AS artwork_date, artwork.medium AS artwork_medium, artwork.collection AS artwork_coll, artwork.cat_rais AS artwork_cat, artwork.photo AS artwork_photo, artwork.weather AS artwork_weather, artwork.time AS artwork_time, stay.title AS stay_title, stay.year AS stay_year, pov.title AS pov_title, pov.text AS pov_text, pov.photo AS pov_photo FROM artwork INNER JOIN stay ON artwork.stay_id=stay.id INNER JOIN pov ON artwork.pov_id=pov.id";
$req_default=$req_base." ORDER BY pov.id";

//Si tous mes tableaux de requêtes sélectionnés sont vides, je lance la requête de base
if (empty($selected_weathers) AND empty($selected_times) AND empty($selected_stays)){
	$req_totale=$req_default;
}
else {
	$req_criteria=array();
	if(!empty($selected_weathers)){
		$temp_weathers="weather IN ('".implode("' , '" , $selected_weathers)."')";
		array_push($req_criteria, $temp_weathers);
	}
	if(!empty($selected_times)){
		$temp_times="time IN ('".implode("' , '" , $selected_times)."')";
		array_push($req_criteria, $temp_times);
	}
	if(!empty($selected_stays)){
		$temp_stays="stay.key IN ('".implode("' , '" , $selected_stays)."')";
		array_push($req_criteria, $temp_stays);
	}
	$req_totale=$req_base." WHERE ".implode(" AND ", $req_criteria)." ORDER BY pov.id";
}

try
{
	// Connexion à la base avec la méthode PDO (orientée objet)
	$bdd = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME.';charset=utf8', DB_USER, DB_PWD);
}
catch (Exception $e)
{
	die('Erreur : ' . $e->getMessage());
}

$reponse = $bdd->query($req_totale);

// On affiche chaque entrée une à une
$json_array  = array();
$varia = -1;
$last_pov_id = "";

while ($donnees = $reponse->fetch(PDO::FETCH_ASSOC))
{
	if ($varia == -1 OR $last_pov_id != $donnees['pov_id'])
	{
		$varia++;
		$pov_donnees = array(
			"pov_id" => $donnees['pov_id'],
			"pov_latitude" => $donnees['pov_latitude'],
			"pov_longitude" => $donnees['pov_longitude'],
			"pov_title" => $donnees['pov_title'],
			"pov_text" => $donnees['pov_text'],
			"pov_photo" => $donnees['pov_photo'],
			"artworks" => array()
		);
		array_push($json_array, $pov_donnees);
		$last_pov_id = $donnees['pov_id'];
	}
	$artwork_donnees = array(
		"artwork_id" => $donnees['artwork_id'],
		"artwork_title" => $donnees['artwork_title'],
		"artwork_medium" => $donnees['artwork_medium'],
		"artwork_date" => $donnees['artwork_date'],
		"artwork_coll" => $donnees['artwork_coll'],
		"artwork_cat" => $donnees['artwork_cat'],
		"artwork_photo" => $donnees['artwork_photo'],
		"stay_year" => $donnees['stay_year'],
		"artwork_weather" => $donnees['artwork_weather'],
		"artwork_time" => $donnees['artwork_time']
		);
	array_push($json_array[$varia]["artworks"], $artwork_donnees);
}
$reponse->closeCursor(); // Termine le traitement de la requête

echo json_encode($json_array);
?>
