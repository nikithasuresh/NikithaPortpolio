import 'package:flutter/material.dart';
import 'package:myportfolio/responsive/responsive.dart';
import 'package:myportfolio/sections/portfolio/portfoliodesktop.dart';
import 'package:myportfolio/sections/portfolio/portfoliomobile.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PortfolioMobileTab(),
      tablet: PortfolioMobileTab(),
      desktop: PortfolioDesktop(),
    );
  }
}
