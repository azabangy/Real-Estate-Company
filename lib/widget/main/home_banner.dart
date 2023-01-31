import 'package:flutter/material.dart';
import 'package:real_estate_company/constant.dart';
import 'package:real_estate_company/resposnive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1 : 1.8,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/background.jpg', fit: BoxFit.cover),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            color: kDarkColor.withOpacity(.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Build a Great Future \n For All Of Us ',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)
                      : Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    backgroundColor: kPrimaryColor,
                  ),
                  child: const Text(
                    'CONTACT US',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
