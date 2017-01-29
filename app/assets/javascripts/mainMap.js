  var markers = [];
  var map;
  var markerCluster;
  var useMarkerCluser = true;
  function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
      zoom: 7,
      mapTypeControl: true,
      center: new google.maps.LatLng( 47.361893,-100.465128),
      mapTypeControlOptions: {
      style: google.maps.MapTypeControlStyle.DROPDOWN_MENU,
      mapTypeIds: ['hybrid', 'roadmap', 'terrain']
      }
    });

    $.getJSON('/json/all', createMarkers);
      var bakkenLayer = new google.maps.KmlLayer({
      url: 'https://sites.google.com/site/jskordkmlfiles/kml_files/Bakken.kml?revision=2',
      preserveViewport: true,
      map: map
    });

  }

  function createMarkers(data) {
    data.forEach(function(spill) {
      var type = spill.contaminant;
      var volume = spill.volume;
      var date = spill.date_incident;
      var units = spill.units;
      var id = spill.id.toString();
      var str = "View Spill Page";
      var infowindow = new google.maps.InfoWindow({
        content: "Date:" + " " + date + " Contaminant: " + type + " " + "Volume:" + volume + units + " " + str.link("/spills/" + id)
      });
      var marker = new google.maps.Marker({
        position: new google.maps.LatLng(spill.latitude, spill.longitude),
        map: map
      });
      marker.addListener('click', function() {
        infowindow.open(map, marker);
      });

      markers.push(marker);

    });

    if (useMarkerCluser) {
      markerCluster = new MarkerClusterer(map, markers,{
        imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'
      });
    }
  }