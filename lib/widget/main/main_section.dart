import 'package:flutter/cupertino.dart';
import 'package:real_estate_company/screen/home_screen.dart';
import 'package:real_estate_company/widget/main/project_section.dart';
import 'package:real_estate_company/widget/main/recommendation.dart';
import 'home_banner.dart';
import 'icon_info.dart';


class MainSection extends StatelessWidget {
   const MainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: const [
           HomeBanner(),
           IconInfo(),
           Projects(),
           Recommendation(),
         ],
      ),
    ),);
  }
}
