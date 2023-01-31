import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_company/constant.dart';

import 'contact_info.dart';
import 'goals_widget.dart';
import 'logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const LogoWidget(),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  const ContactInfo(),
                  const Divider(height: 2),
                  const Goals(),
                  const Divider(),
                  downloadButton(context),
                  linksBox(),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }

  Container linksBox() {
    return Container(

                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 5),
                  color: kSecondColor,
                  child: Row(

                    children: [
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/twitter.svg'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/github.svg'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/dribble.svg'),
                      ),
                      const Spacer(),
                    ],
                  ),
                );
  }

  TextButton downloadButton(BuildContext context) {
    return TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/download.svg'),
                        const SizedBox(width: 20),
                        Text(
                          'Download Brochure',
                          style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .color),
                        ),
                      ],
                    ),
                  ),
                );
  }
}
