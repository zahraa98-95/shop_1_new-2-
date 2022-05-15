import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_1_new/constant.dart';
import 'package:shop_1_new/control/apiRegister.dart';

import 'loginPage.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    var name;
    var email;
    var password;

    return   Scaffold(
      backgroundColor: backGround ,
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.topLeft,
                child: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: appBarColoc,size: 35,),
                  onPressed: () {
                    Navigator.pop(context);
                  },),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Regiter',
                  style: TextStyle(color: appBarColoc,
                      fontWeight: FontWeight.bold,
                      fontSize: 50), textAlign:TextAlign.center,),),
            ),
            Padding(padding:  const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(prefixIconColor: cardbackground,
                  labelText: "User Name",
                  labelStyle: TextStyle(
                      color: cardbackground
                  )
                  ,
                  hintText: "Enter Your User Name",
                  contentPadding: EdgeInsets.all(20),
                  helperStyle: TextStyle(
                    color:cardbackground ,),
                  fillColor:appBarColoc ,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color:appBarColoc,width: 2)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: appBarColoc,width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color:appBarColoc,width: 2)
                  ),

                ),
                onChanged: (value){
                  setState(() {
                    name=value;
                  });

                },


              ),
            ),
            Padding(padding:  const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(prefixIconColor: cardbackground,
                  labelText: "Email",
                  labelStyle: TextStyle(
                      color: cardbackground
                  )
                  ,
                  hintText: "Enter Your Email",
                  contentPadding: EdgeInsets.all(20),
                  helperStyle: TextStyle(
                    color:cardbackground ,),
                  fillColor:appBarColoc ,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color:appBarColoc,width: 2)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: appBarColoc,width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color:appBarColoc,width: 2)
                  ),

                ),
                onChanged: (value){
                  setState(() {
                    email=value;
                  });

                },


              ),
            ),
            Padding(padding:  const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(prefixIconColor: cardbackground,
                  labelText: "Password",
                  labelStyle: TextStyle(
                      color: cardbackground
                  )
                  ,
                  hintText: "Enter Your Pasword",
                  contentPadding: EdgeInsets.all(20),
                  helperStyle: TextStyle(
                    color:cardbackground ,),
                  fillColor:appBarColoc ,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color:appBarColoc,width: 2)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: appBarColoc,width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color:appBarColoc,width: 2)
                  ),

                ),
                onChanged: (value){
                  setState(() {
                    password=value;
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
            RegisterClass.register(name,email,password);
                       Navigator.push(context,
                           CupertinoPageRoute(builder: (BuildContext context) {
                             return LoginPage();
                          }));
                    },
                    elevation: 20,
                    hoverColor:appBarColoc,
                    fillColor: appBarColoc,
                    child: Text(" Register", style: TextStyle(color:backGround, fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.all(40),

                    shape: CircleBorder(),

                  )
                ],
              ),
            )


          ],
        ),
      ) ,
    );
  }
}
