import 'package:flutter/material.dart';
import 'package:myc/Screens/MainScreen.dart';
import 'package:myc/Screens/widgets/ExpandedButtonWidget.dart';
import 'package:myc/Screens/widgets/TextFormFieldWidget.dart';

class UserSignupPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            SizedBox(height:70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Create Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height:20),
            TextFormFieldWidget(
              controller: usernameController,
              hintText: 'Username',
              prefixIcon: Icon(Icons.person),
            ),
            SizedBox(height: 20.0),
            TextFormFieldWidget(
              controller: dobController,
              hintText: 'DOB DD/MM/YYYY',
              prefixIcon: Icon(Icons.calendar_today),
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: TextFormFieldWidget(
                    controller: phoneNumberController,
                    hintText: '+91',
                    //prefixIcon: Icon(Icons.phone),
                  ),
                ),
                SizedBox(width: 10.0),
                Flexible(
                  flex: 3,
                  child: TextFormFieldWidget(
                    controller: phoneNumberController,
                    hintText: 'Phone Number',
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            TextFormFieldWidget(
              controller: emailController,
              hintText: 'Email',
              prefixIcon: Icon(Icons.email),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Expanded(
                    child:ButtonWidget(
                      text:'Next',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>MainScreen()
                            ));
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
