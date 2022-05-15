
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:shop_1_new/constant.dart';
import 'package:shop_1_new/view/categoryPage.dart';

class ProductPage extends StatefulWidget {

  String avatar;
 String id;
 String name;
 String title;
 String description;
 String discount;
 String in_stock;
 String price_final_text;

  @override
  _ProductPageState createState() => _ProductPageState();

  ProductPage({
    required this.avatar,
    required this.id,
    required this.name,
    required this.title,
    required this.description,
    required this.discount,
    required this.in_stock,
    required this.price_final_text,
  });
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGround,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                    onPressed:(){
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: appBarColoc,
                      size: 25,
                    ),

                    label: Text(
                      "Back",
                      style: TextStyle(
                          color: appBarColoc,
                          fontSize: 25,
                          fontWeight: FontWeight.w800
                      ),

                    )),
              ),
              FlipCard(
                fill: Fill.fillBack,
                  front: Container(
                    height: MediaQuery.of(context).size.height/1.5,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              widget.avatar,

                          ),
                          fit: BoxFit.fill
                      ),

                    ),
                  ), back: Container(
                height: MediaQuery.of(context).size.height/1.5,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                        widget.avatar,

                      ),
                      fit: BoxFit.fill
                  ),

                ),
              ),),
              Column(
                children: [
                 Container(

                   alignment: Alignment.topLeft,


                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text("Title :",
                         style: TextStyle(
                             fontSize:18,
                             color: cardbackground

                         ),
                       ),


                       Expanded(
                           flex: 70,
                           child: Text("${widget.title}",
                         style: TextStyle(
                             fontSize:18,
                             color: appBarColoc
                         ),
                       ))
                       ,
                     ],
                   ),
                  ),
                 Container(
                   alignment: Alignment.topLeft,

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Description :  ",
                          style: TextStyle(
                              fontSize:16,
                              color: cardbackground

                          ),
                        ),
                        Expanded(
                          flex: 70,
                          child: Text((widget.description=="null")?"no have data":"${widget.description} ",
                            style: TextStyle(
                                fontSize:18,
                                color: appBarColoc
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                 Container(
                   alignment: Alignment.topLeft,

                    child: Row(
                      children: [
                        Text("Discount :  ",
                          style: TextStyle(
                              fontSize: 18,
                            color: cardbackground

                          ),
                        ),
                        Text("${widget.discount}",
                          style: TextStyle(
                              fontSize: 18,
                              color: appBarColoc
                          ),
                        ),
                      ],
                    ),
                  ),
                 Container(
                   alignment: Alignment.topLeft,

                    child:Row(
                      children: [
                        Text("Price Final Text :  ",
                          style: TextStyle(
                              fontSize: 18,
                            color: cardbackground

                          ),
                        ),
                        Text("${widget.price_final_text} ",
                          style: TextStyle(
                              fontSize: 18,
                              color:appBarColoc
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                  alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Text("In Stock : ",
                          style: TextStyle(
                            fontSize: 18,
                            color: cardbackground


                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text("${widget.in_stock} ",
                          style: TextStyle(
                            fontSize: 18,
                            color: appBarColoc,


                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(


        onPressed: () {

        },
        child: const Icon(Icons.add_shopping_cart_outlined),


      ),
    );
  }
}
