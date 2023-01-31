import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo('Address', 'Station Street 5'),
        buildContactInfo('Country', 'Egypt'),
        buildContactInfo('Email', 'mah@Gmail.com'),
        buildContactInfo('Phone', '+020 100 000 555'),
        buildContactInfo('Website', 'RealEstate@website.com'),
      ],
    );
  }

  Padding buildContactInfo(String title, String location) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            location,
          ),
        ],
      ),
    );
  }
}
