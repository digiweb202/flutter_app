import 'package:flutter/material.dart';
import 'package:office_furniture_store/core/app_asset.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(AppAsset.profilePic),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hello Somil!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: 10),
            Text(
              "Address:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              "Your address goes here",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              "Phone:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              "Your phone number goes here",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              "Email:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              "Your email goes here",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
class AppAsset {
  static const String profilePic = 'assets/images/profilepic.jpg';
  static const String githubPic = 'assets/github_logo.png';
}
