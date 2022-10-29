import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/responsive/responsive.dart';
import 'package:myportfolio/sections/services/service_desktop.dart';
import 'package:myportfolio/sections/services/service_mobile.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
