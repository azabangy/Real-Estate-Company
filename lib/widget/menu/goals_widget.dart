import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Goals',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          goalsItems('Planning State'),
          goalsItems('Development'),
          goalsItems('Execution phase'),
          goalsItems('New Way To Living'),
        ],
      ),
    );
  }

  Padding goalsItems(String item) {
    return Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/check.svg'),
              SizedBox(width: 10),
              Text(item),
            ],
          ),
        );
  }
}
