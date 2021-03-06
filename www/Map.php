<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="stylesheet" type="text/css" href="css/styles.css" />
  <title>Pissarro à Rouen</title>
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.3/leaflet.css" />
  <script src="http://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.3/leaflet.js"></script>
  <script type="text/javascript" src="js/jquery.js"></script>
  <style type="text/css"></style>
  <script src="js/marked.js"></script>
  <!-- Bootstrap Core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom CSS -->
  <style>
  body {
      padding-top: 70px;
      /* Required padding for .navbar-fixed-top. Remove if using .navbar-static-top. Change if height of navigation changes. */
  }
  </style>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>
  <!-- Navigation -->
  <?php include("menu.php"); ?>
  <!-- Page Content -->
  <div class="container-fluid">
      <div class="row">
          <div class="col-lg-3 col-md-3">
            <div class="contenu">
              <a href="#item" data-toggle="collapse">
                <button type="button" class="btn btn-block btn-lg btn-default" aria-label="Left Align">
                  Rechercher
                  <span class="glyphicon glyphicon-collapse-down" aria-hidden="true">
                  </span>
                </button>
              </a>
              <div id="item" class="collapse in">
              <form name="ajaxform" id="ajaxform" action="artworks.php" method="POST">
                <p> Les séjours </br>
                  <input type="checkbox" name="stay01" id="2" checked="checked"/> <label for="2">1883</label>
                  <input type="checkbox" name="stay02" id="1" checked="checked"/> <label for="1">début 1896</label>
                  <input type="checkbox" name="stay03" id="3" checked="checked"/> <label for="3">fin 1896</label>
                  <input type="checkbox" name="stay04" id="5" checked="checked"/> <label for="5">1898</label>
                </p>
                <p> La météo </br>
                  <input type="checkbox" name="weather00" id="w0" checked="checked"/> <label for="w0">à renseigner</label>
                  <input type="checkbox" name="weather01" id="w1" checked="checked"/> <label for="w1">soleil</label>
                  <input type="checkbox" name="weather02" id="w2" checked="checked"/> <label for="w2">soleil couchant</label></br>
                  <input type="checkbox" name="weather03" id="w3" checked="checked"/> <label for="w3">brume</label>
                  <input type="checkbox" name="weather04" id="w4" checked="checked"/> <label for="w4">temps gris</label>
                  <input type="checkbox" name="weather05" id="w5" checked="checked"/> <label for="w5">pluie</label>
                </p>
                <p> Le moment de la journée </br>
                  <input type="checkbox" name="time00" id="t0" checked="checked"/> <label for="t0">à renseigner</label>
                  <input type="checkbox" name="time01" id="t1" checked="checked"/> <label for="t1">matin</label>
                  <input type="checkbox" name="time02" id="t2" checked="checked"/> <label for="t2">après midi</label></br>
                  <input type="checkbox" name="time03" id="t3" checked="checked"/> <label for="t3">fin de journée</label>
                </p>
                <p>
                    <input type="submit" class="btn btn-default" value="Valider" />
                </p>
              </form>
              </div>
            </div>
            <div class="resultats">
              <a href="#item2" data-toggle="collapse">
                <button type="button" class="btn btn-block btn-lg btn-default" aria-label="Left Align">
                  Résultats
                  <span class="glyphicon glyphicon-collapse-down" aria-hidden="true">
                  </span>
                </button>
              </a>
              <div id="item2" class="collapse in">
                <div class="contenu" id="selected_pov_artworks">
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-6">
            <div id="cadre_map">
              <div id="map"></div>
              <script type="text/javascript" src="js/layers.js"></script>
            </div>
              <script type="text/javascript" src="js/pov.js"></script>
          </div>
<!-- Affichage des résultats -->
          <div class="col-lg-3 col-md-3">
            <div class="resultats">
              <div class="contenu" id="selected_artwork">
              </div>
            </div>
          </div>
      </div>
  </div>
  <!-- jQuery Version 1.11.1 -->
  <script src="js/jquery.js"></script>

  <!-- Bootstrap Core JavaScript -->
  <script src="js/bootstrap.min.js"></script>

</body>
</html>
