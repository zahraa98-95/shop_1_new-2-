import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_1_new/constant.dart';
import 'package:shop_1_new/control/apiLogin.dart';
import 'package:shop_1_new/view/categoryPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
     String email = " ";
     String password = " ";

    return Scaffold(
      backgroundColor: backGround,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: appBarColoc,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Log in',
                  style: TextStyle(
                      color: appBarColoc,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIconColor: cardbackground,
                  labelText: "Email",
                  labelStyle: TextStyle(color: cardbackground),
                  hintText: "Enter Your Email",
                  contentPadding: EdgeInsets.all(20),
                  helperStyle: TextStyle(
                    color: cardbackground,
                  ),
                  fillColor: appBarColoc,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: appBarColoc, width: 2)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: appBarColoc, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: appBarColoc, width: 2)),
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIconColor: cardbackground,
                  labelText: "Password",
                  labelStyle: TextStyle(color: cardbackground),
                  hintText: "Enter Your Pasword",
                  contentPadding: EdgeInsets.all(20),
                  helperStyle: TextStyle(
                    color: cardbackground,
                  ),
                  fillColor: appBarColoc,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: appBarColoc, width: 2)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: appBarColoc, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: appBarColoc, width: 2)),
                ),
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(50),
              child: Row(
                children: [
                  RawMaterialButton(
                    onPressed: () {
                      print("dsagedsagedsa");
                      LoginClass.login(email, password);
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (BuildContext context) {
                        return CategoryPage();
                      }));
                    },
                    elevation: 20,
                    hoverColor: appBarColoc,
                    fillColor: appBarColoc,
                    child: Text(" Log in" ,style: TextStyle( fontSize: 30),),
                    padding: EdgeInsets.all(40),
                    shape: CircleBorder(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
