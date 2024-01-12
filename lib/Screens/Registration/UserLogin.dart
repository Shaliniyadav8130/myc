import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myc/Screens/MainScreen.dart';
import 'package:myc/Screens/Registration/UserSignup.dart';
import 'package:myc/Screens/widgets/ExpandedButtonWidget.dart';
import 'package:myc/Screens/widgets/TextFormFieldWidget.dart';

class UserLoginPage extends StatefulWidget {
  const UserLoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<UserLoginPage> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_updateButtonState);
    _passwordController.addListener(_updateButtonState);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _updateButtonState() {
    final email = _emailController.text;
    final password = _passwordController.text;
    setState(() {
      _isButtonEnabled = email.isNotEmpty && password.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //shrinkWrap: true,
          children: [

            TextFormFieldWidget(
              controller: _emailController,
              hintText: 'Username',
              prefixIcon: Icon(Icons.person),
            ),

            SizedBox(height: 18),

            TextFormFieldWidget(
              controller: _passwordController,
              hintText: 'Password',
              obscureText: true,
              prefixIcon: Icon(Icons.lock_outline_rounded),
            ),

            SizedBox(height:20),

            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Comforta',
                        ),
                      ),
                      onPressed: _isButtonEnabled ? () {
                         Navigator.push(context,
                             MaterialPageRoute(builder: (context) =>MainScreen()
                             ));} : null,
                      style: ButtonStyle(
                        backgroundColor: _isButtonEnabled
                            ? MaterialStateProperty.all<Color>(Color(0xff07305D))
                            : MaterialStateProperty.all<Color>(Color(0x6607305D)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),

            Row(
              children: [
                Expanded(
                    child:ButtonWidget(
                      text:'Signup',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>UserSignupPage()
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
