import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myc/Screens/Siderbar.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("MYC",style: TextStyle(color: Colors.white),),
            backgroundColor: Color(0xff05015b), // Include the sidebar here
          ),
          drawer:Drawer(
            // Set the background color of the drawer to white
            child: Container(
              color: Colors.white,
              child: Sidebar(),
            ),
          ),
          body: Text("Home Screen")

    );
  }
}
