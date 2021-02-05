import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
//import 'package:maps_launcher/maps_launcher.dart';
import 'package:simple_location_picker/simple_location_picker_screen.dart';
import 'package:simple_location_picker/simple_location_result.dart';
import 'package:simple_location_picker/utils/slp_constants.dart';

class LocationPicker extends StatefulWidget {
  @override
  _LocationPickerState createState() => _LocationPickerState();
}

class _LocationPickerState extends State<LocationPicker> {
  SimpleLocationResult _selectedLocation =
      SimpleLocationResult(16.756666, 81.675852);
  // Tanuku         16.756666, 81.675852
  // Tadepalligudem 16.807048, 81.531316
  // Rajahmundry    17.000154, 81.804206
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50),
          RaisedButton(
            child: Text("Pick a Location"),
            onPressed: () {
              double latitude = _selectedLocation != null
                  ? _selectedLocation.latitude
                  : SLPConstants.DEFAULT_LATITUDE;
              double longitude = _selectedLocation != null
                  ? _selectedLocation.longitude
                  : SLPConstants.DEFAULT_LONGITUDE;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SimpleLocationPicker(
                            initialLatitude: latitude,
                            initialLongitude: longitude,
                            appBarTitle: "Select Location",
                          ))).then((value) {
                if (value != null) {
                  setState(() {
                    _selectedLocation = value;
                  });
                }
              });
            },
          ),
          // The button that opens the SimpleLocationPicker in display ONLY mode.
          // This opens the SimpleLocationPicker to display a specific location on the map with a marker.

          SizedBox(height: 50),

          // The button that opens the SimpleLocationPicker in picker mode.
          // This opens the SimpleLocationPicker to allow the user to pick a location from the map.
          // The SimpleLocationPicker returns SimpleLocationResult containing the lat, lng of the picked location.

          RaisedButton(
            child: Text("Launch in Map"),
            onPressed: () {
              MapsLauncher.launchCoordinates(
                  _selectedLocation.latitude, _selectedLocation.longitude);
            },
          ),

          SizedBox(height: 50),
          // Displays the picked location on the screen as text.
          _selectedLocation != null
              ? Text(
                  'SELECTED: (${_selectedLocation.latitude}, ${_selectedLocation.longitude})')
              : Container(),
        ],
      ),
    ));
  }
}
