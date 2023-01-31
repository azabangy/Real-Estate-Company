import 'package:flutter/material.dart';
import 'package:real_estate_company/constant.dart';
import 'package:real_estate_company/model/projects.dart';
import 'package:real_estate_company/resposnive.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Projects',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: kPrimaryColor),
          ),
          const SizedBox(height: 20),
          Responsive(
            desktop: buildGridView(
              itemCount: demoProjects.length,
              childAspectRatio: .7,
              crossAxisCount: MediaQuery.of(context).size.width > 800  ? 3 : 2,
              itemBuilder: (context, index) => project_Item(index, context),
            ),
            mobile: buildGridView(
              itemCount: demoProjects.length,
              childAspectRatio: .5,
              crossAxisCount: 2,
              itemBuilder: (context, index) => project_Item(index, context),
            ),
            mobileLarge: buildGridView(
              itemCount: demoProjects.length,
              childAspectRatio: .7,
              crossAxisCount: MediaQuery.of(context).size.width > 800  ? 3 : 2,
              itemBuilder: (context, index) => project_Item(index, context),
            ),
              tablet: buildGridView(
                itemCount: demoProjects.length,
                childAspectRatio: .7,
                crossAxisCount: MediaQuery.of(context).size.width > 800  ? 3 : 2,
                itemBuilder: (context, index) => project_Item(index, context),
              ),
          )
        ],
      ),
    );
  }

  GridView buildGridView({
    required int crossAxisCount,
    required int itemCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: childAspectRatio,
        ),
        itemBuilder: itemBuilder);
  }

  Container project_Item(int index, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kSecondColor,
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            demoProjects[index].image!,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text(demoProjects[index].title!,
              maxLines: 2,
              overflow: TextOverflow.fade,
              style: Theme.of(context).textTheme.subtitle2),
          const SizedBox(height: 10),
          Expanded(
            child: Text(
              demoProjects[index].description!,
              style: const TextStyle(height: 1.5),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: const Text(
              'See More >',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
