import 'package:flutter/material.dart';
import 'package:smd/NextPage.dart';
import 'package:smd/constants.dart';
import 'package:smd/widgets/Text_Display.dart';
import 'package:smd/widgets/ipfield.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 50, right: 50),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.indigo, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.bookmark,
                  size: 60,
                  color: Colors.white,
                ),
                Text('Welcome To SMD',
                    style: kTextStyle.copyWith(
                        fontSize: 60, fontWeight: FontWeight.bold)),
                Text('Enter your details to sign in', style: kTextStyle),
                SizedBox(
                  height: 30,
                ),
                Text('Email Address', style: kTextStyle),
                SizedBox(
                  height: 10,
                ),
                ipfield(hintText: 'Email'),
                SizedBox(
                  height: 10,
                ),
                Text('Password', style: kTextStyle),
                SizedBox(
                  height: 10,
                ),
                ipfield(hintText: 'Password'),
                SizedBox(
                  height: 30,
                ),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  height: 70,
                  width: 1000,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return NextPage();
                        }));
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'New to SMD?',
                        style: TextStyle(
                          fontSize: 25,
                        )),
                    TextSpan(
                        text: 'Create a new account',
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 25,
                            fontWeight: FontWeight.bold))
                  ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
