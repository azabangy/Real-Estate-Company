import 'package:flutter/material.dart';

import '../../constant.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return AspectRatio(
        aspectRatio: 1.7,
        child: Container(
          alignment: Alignment.center,
          color: kSecondColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround ,
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/logo.png',
                width: 50,
              ),

              Text(
                'Real Estate',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const Text(
                'Modern Home With great \n Interior Design ',
                style:TextStyle(fontWeight: FontWeight.w200),textAlign: TextAlign.center,
              ),
              const Spacer(),

            ],
          ),
        ),
      );
    }
  }



