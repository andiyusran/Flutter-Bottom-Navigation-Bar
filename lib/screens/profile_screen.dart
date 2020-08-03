import 'package:bottomnavbar/constants.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        child: Center(
          child: Text(
            'Profile Screen',
            style: TextStyle(
                color: textColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: primaryColor,
      centerTitle: true,
      title: Title(color: Colors.white, child: Text("Profile")),
      actions: <Widget>[
        IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // masuk halaman baru
            }),
      ],
    );
  }
}
