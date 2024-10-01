import 'package:flutter/material.dart';

import 'package:responsive_ui/core/functions/get_device_type.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    var mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: screenWidth / 2,
            height: screenHeight / 2,
            color: Colors.pinkAccent,
            child: LayoutBuilder(builder: (context, constraints) {
              var deviceType = getDeviceType(mediaQueryData);

              double localHeight = constraints.maxHeight;
              double localWidth = constraints.maxWidth;
              return Center(
                child: Container(
                  width: localWidth / 2,
                  height: localHeight / 2,
                  color: Colors.white,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
