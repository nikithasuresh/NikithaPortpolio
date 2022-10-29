import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/configs/space.dart';
import 'package:myportfolio/sections/services/widgets/_service_card.dart';
import 'package:myportfolio/utils/services_utils.dart';
import 'package:myportfolio/widgets/custom_text_heading.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomSectionHeading(
          text: '\nWhat I can do?',
        ),
        const CustomSectionSubHeading(
          text: 'I may not be perfect but surely I\'m of some use :)\n\n',
        ),
        Space.y!,
        CarouselSlider.builder(
          itemCount: ServicesUtils.servicesTitles.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ServiceCard(
              serviceIcon: ServicesUtils.servicesIcons[i],
              serviceTitle: ServicesUtils.servicesTitles[i],
              serviceDescription: ServicesUtils.servicesDescription[i],
            ),
          ),
          options: CarouselOptions(
            viewportFraction: 0.65,
            height: width < 450 ? height * 0.4 : height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        )
      ],
    );
  }
}
