import 'package:flutter/material.dart';
import 'package:myportfolio/responsive/responsive.dart';
import 'package:myportfolio/sections/about/aboutdesktop.dart';
import 'package:myportfolio/sections/about/aboutmobile.dart';
import 'package:myportfolio/sections/about/abouttab.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      tablet: AboutTab(),
      mobile: AboutMobile(),
      desktop: AboutDesktop(),
    );
  }
}
