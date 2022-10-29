import 'package:flutter/material.dart';
import 'package:myportfolio/configs/app.dart';
import 'package:myportfolio/provider/drawer_provider.dart';
import 'package:myportfolio/provider/scroll_provider.dart';
import 'package:myportfolio/responsive/responsive.dart';
import 'package:myportfolio/sections/main/widgets/mobile_drawer.dart';
import 'package:myportfolio/sections/main/widgets/navbar_desktop.dart';
import 'package:myportfolio/utils/utils.dart';
import 'package:myportfolio/widgets/arrow_on_top.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            const Body(),
            const ArrowOnTop(),
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? const NavBarTablet()
                : const NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return ListView.builder(
      controller: scrollProvider.controller,
      itemCount: BodyUtils.views.length,
      itemBuilder: (context, index) => BodyUtils.views[index],
    );
  }
}
