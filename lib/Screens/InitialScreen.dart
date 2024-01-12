import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myc/Screens/Registration/UserLogin.dart';
import 'package:myc/Screens/Siderbar.dart';
import 'package:myc/Screens/widgets/ExpandedButtonWidget.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                        child:ButtonWidget(
                          text:'Admin',
                          onPressed: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) =>SignupPage()
                            //     ));
                          },
                          backgroundColor: Color(0xffF07305D),
                        )

                    ),
                  ],
                ),

                SizedBox(height:10),
                Row(
                  children: [
                    Expanded(
                        child:ButtonWidget(
                          text:'Student',
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>UserLoginPage()
                                ));
                          },
                          backgroundColor: Color(0xffF07305D),
                        )

                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                        child:ButtonWidget(
                          text:'Alumni',
                          onPressed: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) =>SignupPage()
                            //     ));
                          },
                          backgroundColor: Color(0xffF07305D),
                        )

                    ),
                  ],
                ),

              ],
            ),
          ),

    );
  }
}
