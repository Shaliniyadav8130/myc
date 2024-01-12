import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff05015b),
            ),
            child: Column(
              children: [
                // Container(
                //   height: 60,
                //   width: 60,
                //   child:Image.asset("assets/images/bus.png"),
                // ),
                SizedBox(height:10),
                Text(
                  'MYC',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),

          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {

            },
          ),
          ListTile(
            leading: Icon(Icons.file_copy_outlined),
            title: Text('Official Detail'),
            onTap: () {
              },
          ),

          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Academic Calendar'),
            onTap: () {
              },
          ),

          ListTile(
            leading: Icon(Icons.lock_clock),
            title: Text('Time table'),
            onTap: () {
              },
          ),
        ],
      ),
    );
  }
}
