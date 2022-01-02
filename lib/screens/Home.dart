import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:uber/provider/AppProvider.dart';
class Home extends StatelessWidget {
  static const String HomeRoute='HomeRoute';

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return Scaffold(
    body: SafeArea(
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
            target:provider.initialPosition,
            zoom: 10.0,
        ),
        onMapCreated:provider.onCreate,
        myLocationEnabled: true,
        markers: provider.marker,
        onCameraMove: provider.onCameraMove,
      ),
    ),
    );
  }
}
