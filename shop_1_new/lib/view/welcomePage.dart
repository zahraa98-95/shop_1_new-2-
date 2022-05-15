import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shop_1_new/view/loginPage.dart';
import 'package:shop_1_new/constant.dart';
import 'registerPage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGround,
        body: SingleChildScrollView(child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text('Deal', style: TextStyle(
                  color: appBarColoc, fontWeight: FontWeight.bold, fontSize: 50),
                textAlign: TextAlign.center,),
            ),
            Container(
              padding: EdgeInsets.all(35),
              child: Text('The Right Address For Shopping Anyday',
                style: TextStyle(color: appBarColoc,
                    fontWeight: FontWeight.bold,
                    fontSize: 40), textAlign: TextAlign.center,),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'it is now very easy to reach the best quality among all the product on the internet',
                style: TextStyle(color: appBarColoc,
                    fontWeight: FontWeight.w200,
                    fontSize: 30), textAlign: TextAlign.center,),
            ),

            Container(
              margin: EdgeInsets.all(40),
              child: Row(

                children: [
                  RawMaterialButton(

                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (BuildContext context) {
                            return RegisterPage();
                          }));
                    },
                    elevation: 20,
                    hoverColor: cardbackground,
                    fillColor: appBarColoc,
                    child: Text("Register", style: TextStyle(fontSize: 25),
                    ),
                    padding: EdgeInsets.all(50),
                    shape: CircleBorder(),

                  )
                  , RawMaterialButton(

                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (BuildContext context) {
                            return LoginPage();
                          }));
                    },
                    elevation: 20,
                    hoverColor:appBarColoc,
                    fillColor: cardbackground,
                    child: Text(" Log in",style: TextStyle(fontSize: 20),

                    ),
                    padding: EdgeInsets.all(40),

                    shape: CircleBorder(),

                  )
                ],
              ),
            )
          ],
        ),)),
    );
  }
}

// //class GradientText extends StatelessWidget {
//   const GradientText(
//       this.text, {
//         required this.gradient,
//         this.style,
//       });
//
//   final String text;
//   final TextStyle? style;
//   final Gradient gradient;
//
//   @override
//   Widget build(BuildContext context) {
//     return ShaderMask(
//       blendMode: BlendMode.srcIn,
//       shaderCallback: (bounds) => gradient.createShader(
//         Rect.fromLTWH(0, 0, bounds.width, bounds.height),
//       ),
//       child: Text(text, style: style),
//     );
//   }
// }