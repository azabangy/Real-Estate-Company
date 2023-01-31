import 'package:flutter/material.dart';
import 'package:real_estate_company/resposnive.dart';
import 'package:real_estate_company/widget/menu/side_menu.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({required this.mainSection, Key? key}) : super(key: key);

  Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenuSection(),
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: Colors.transparent,
              leading: Builder(
                builder:  (context) {
                  return IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),
            ),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 1440),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  const Expanded(
                    flex: 2,
                    child: SideMenuSection(),
                  ),
                Expanded(
                  flex: 7,
                  child: mainSection,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
