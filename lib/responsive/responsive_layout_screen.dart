import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilis/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          //pass webscreen layout
          return webScreenLayout;
        } else {
          //pass mobile screen layout
          return mobileScreenLayout;
        }
      },
    );
  }
}
