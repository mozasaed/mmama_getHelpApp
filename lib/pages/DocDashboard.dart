import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DocDashboard extends StatefulWidget {
  const DocDashboard({Key? key}) : super(key: key);

  @override
  State<DocDashboard> createState() => _DocDashboardState();
}

class _DocDashboardState extends State<DocDashboard> {

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 5.0),
                    child: Text("Welcome Back"),
                  ),
                  Text("Dr.Moza Mohammed", style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Patient Near Me"),
                  Text("View All",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                // color: Colors.deepOrange,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                ),

              ),
            )
          ],
          
        ),

      ),
    );
  }
}
