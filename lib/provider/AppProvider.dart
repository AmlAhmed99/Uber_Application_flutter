import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AppProvider extends ChangeNotifier{
  static LatLng _initialPosition=LatLng(12.92,77.02);
  LatLng _lastPosition=_initialPosition;
  LatLng get initialPosition => _initialPosition;
  LatLng get lastPosition => _lastPosition;
  GoogleMapController mapController;
  final Set<Marker> marker={};

  void onCreate(GoogleMapController controller){
    mapController = controller;
    notifyListeners();
  }
  void onCameraMove(CameraPosition position) {
    _lastPosition = position.target;
    notifyListeners();
  }
  void onAddMarkerPress(){
    marker.add(Marker(
        markerId: MarkerId(_lastPosition.toString()),
        position: _lastPosition,
        infoWindow: InfoWindow(title: "remember here", snippet: "go here"),
        icon: BitmapDescriptor.defaultMarker)
    );
    notifyListeners();
  }


}