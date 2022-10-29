import 'package:flutter/material.dart';
import 'package:myportfolio/responsive/responsive.dart';
import 'package:myportfolio/sections/home/homedesktop.dart';
import 'package:myportfolio/sections/home/homemobile.dart';
import 'package:myportfolio/sections/home/hometab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
