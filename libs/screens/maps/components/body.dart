
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  
  LatLng _initialPosition = LatLng(41.193511,29.034854);
  GoogleMapController _controller;
  Location _location = Location();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  void _onMapCreated(GoogleMapController _cntrl){
    _controller = _cntrl;
    _location.onLocationChanged.listen((l){
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target:LatLng(l.latitude,l.longitude), zoom:14),
        )
      );
    });
  }

  void _add() {
      var markerIdVal = "Market 1";
      final MarkerId markerId = MarkerId(markerIdVal);

      // creating a new MARKER
      final Marker marker = Marker(
        markerId: markerId,
        position: LatLng(
          41.177491,
          389.046643
        ),
        infoWindow: InfoWindow(title: markerIdVal, snippet: '*'),
        onTap: () {
        },
      );

      setState(() {
        // adding a new marker to map
        markers[markerId] = marker;
      });
  }
  @override
  void initState() {
    super.initState();
    _add();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(target: _initialPosition, zoom:14),
            onMapCreated: _onMapCreated,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            tiltGesturesEnabled: false,
            compassEnabled: false,
            mapToolbarEnabled: false,
            markers:Set<Marker>.of(markers.values)
          ),
        ],
      ),
    );
  }

}

 
