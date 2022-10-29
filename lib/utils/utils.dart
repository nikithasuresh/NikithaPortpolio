import 'package:flutter/widgets.dart';
import 'package:myportfolio/sections/about/about.dart';
import 'package:myportfolio/sections/contact/contact.dart';
import 'package:myportfolio/sections/home/home.dart';
import 'package:myportfolio/sections/portfolio/portfolio.dart';
import 'package:myportfolio/sections/services/service.dart';
import 'package:myportfolio/widgets/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/web.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    // "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    // "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    // "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
  ];

  static const List<String> socialLinks = [
    // "https://facebook.com/mhmzdev",
    "https://instagram.com/nikitha_suresh__?igshid=YmMyMTA2M2Y=",
    // "https://twitter.com/mhmzdev",
    "https://www.linkedin.com/in/nikitha-suresh-807809190",
    "https://github.com/nikithasuresh",
    // "https://mhmzdev.medium.com"
  ];

  static const String resume =
      'https://drive.google.com/file/d/1Vp4HLYI8gq07KyUMX6cgjE71-rTZET9F/view?usp=share_link';

  static const String gitHub = 'https://github.com/nikithasuresh';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
