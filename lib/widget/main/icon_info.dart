import 'package:flutter/material.dart';
import 'package:real_estate_company/constant.dart';

import '../../resposnive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        child: Responsive.isDesktop(context)
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  icon_Item(
                      context: context,
                      icon: Icons.supervisor_account,
                      text: '122+',
                      lable: 'Client'),
                  icon_Item(
                      context: context,
                      icon: Icons.location_on,
                      text: '234+',
                      lable: 'Projects'),
                  icon_Item(
                      context: context,
                      icon: Icons.public,
                      text: '90+',
                      lable: 'Countries'),
                  icon_Item(
                      context: context,
                      icon: Icons.star,
                      text: '500+',
                      lable: 'Stars'),
                ],
              )
            : Column(
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      icon_Item(
                          context: context,
                          icon: Icons.supervisor_account,
                          text: '122+',
                          lable: 'Client'),
                      icon_Item(
                          context: context,
                          icon: Icons.location_on,
                          text: '234+',
                          lable: 'Projects'),
                    ],
                  ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  icon_Item(
                      context: context,
                      icon: Icons.public,
                      text: '90+',
                      lable: 'Countries'),
                  icon_Item(
                      context: context,
                      icon: Icons.star,
                      text: '500+',
                      lable: 'Stars'),
                ],)
              ],
            ));
  }

  Column icon_Item({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String lable,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(icon, size: 50),
        const SizedBox(height: 10),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: kPrimaryColor, fontSize: 30),
        ),
        const SizedBox(height: 10),
        Text(
          lable,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
