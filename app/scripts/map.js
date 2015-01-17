// JSON
var data = JSON.parse('[
  {"address":"55.656677, 37.570177","content":"<h3 class=map-tooltip-title>Blue Avenue #33, King Leonardo 33821</h3><p class=map-tooltip-text>+82394 5940</p>","status":"live"},
  {"address":"55.655666, 37.571856","content":"hello world from poitiers"},
  {"address":"55.656178, 37.570316","content":"hello world from perpignam"}]'
);

var $map = $('#map-canvas');

// Gmap Defaults
$map.gmap3({
    map:{
        options:{
            center:[55.656253, 37.571228],
            zoom: 16
        }
    }
});

// Json Loop
$.each(data, function(key, val) {
    $map.gmap3({
        marker:{
            values:[{
                address:val.address,
                events: {
                    click: function(marker, event, context) {

                        gmap_clear_markers();
                        
                         $map.gmap3({
                            map:{
                              options:{
                                center:event.latLng
                              }
                            }
                         });                        

                        $(this).gmap3({
                            overlay:{
                                address:val.address,
                                options:{
                                    content:  '<div class="map-tooltip">'+val.content+'<div class="map-tooltip-control"><a class="button _style-1">Send us an email</a></div></div>',
                                    offset:{
                                        y:-60,
                                        x:-460
                                    }
                                }
                            }
                        });
                    }
                }
            }]
        }
    });
});

// Function Clear Markers
function gmap_clear_markers() {
    $('.map-tooltip').each(function() {
        $(this).remove();
    });
}
