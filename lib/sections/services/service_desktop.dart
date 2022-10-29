import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/configs/space.dart';
import 'package:myportfolio/sections/services/widgets/_service_card.dart';
import 'package:myportfolio/utils/services_utils.dart';
import 'package:myportfolio/widgets/custom_text_heading.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  ServiceDesktopState createState() => ServiceDesktopState();
}

class ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.hf(4),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nWhat I can do?',
          ),
          const CustomSectionSubHeading(
            text: 'I may not be perfect but surely I\'m of some use :)\n\n',
          ),
          Space.y!,
          Wrap(
            spacing: width * 0.05,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: List<Widget>.from(ServicesUtils.servicesIcons
                .asMap()
                .entries
                .map(
                  (e) => ServiceCard(
                    serviceIcon: ServicesUtils.servicesIcons[e.key],
                    serviceTitle: ServicesUtils.servicesTitles[e.key],
                    serviceDescription:
                        ServicesUtils.servicesDescription[e.key],
                  ),
                )
                .toList()),
          )
        ],
      ),
    );
  }
}
