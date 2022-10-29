import 'package:flutter/material.dart';
import 'package:myportfolio/responsive/responsive.dart';
import 'package:myportfolio/sections/contact/contactdesktop.dart';
import 'package:myportfolio/sections/contact/contactmobile.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactMobileTab(),
      tablet: ContactMobileTab(),
      desktop: ContactDesktop(),
    );
  }
}
