import 'package:flutter/material.dart';
import 'package:real_estate_company/constant.dart';
import 'package:real_estate_company/model/projects.dart';
import 'package:real_estate_company/model/recommenation.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Recommendation',
            style: Theme.of(context).textTheme.headline6,
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                demoRecommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: kSecondColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(20),
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage(demoRecommendations[index].image!),
                          ),
                          title: Text(
                            demoRecommendations[index].name!,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          subtitle: Text(
                            demoRecommendations[index].source!,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          demoRecommendations[index].text!,
                          maxLines: 4,
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
