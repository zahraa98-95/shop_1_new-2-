import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shop_1_new/constant.dart';
import 'package:shop_1_new/control/apiCategory.dart';
import 'package:shop_1_new/control/apiProduct.dart';
import 'package:shop_1_new/view/productPage.dart';


class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGround,
        body:  Column(
              children: [
          Padding(
          padding: const EdgeInsets.symmetric(vertical: 55),
          child: ListTile(


            trailing: IconButton(icon: Icon(
              Icons.add_shopping_cart_outlined, color: appBarColoc, size: 35,),
              onPressed: () {

              },),
            title: Text('What categories are you looking for??',
              style: TextStyle(color: appBarColoc,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),),
          ),
        ),


        Container(
          height: 200,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: FutureBuilder(
            future: APIClass.fetchNews(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              return (snapshot.data == null)
                  ? Text('')
                  : CarouselSlider.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, int itemIndex, int pageViewIndex) {
                    return GridTile(
                      child: Image.network(

                        '${snapshot.data[itemIndex].avatar}',


                      ),
                      footer: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        color: appBarColoc.withOpacity(0.6),
                        child: Text(
                          snapshot.data[itemIndex].name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: backGround , fontSize: 20),
                        ),
                      ),
                    );
                  },
                  // options: CarouselOptions(
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,

                  ));
              // autoPlay: true,
              // aspectRatio: 1.5,
              // viewportFraction: 0.7,
              //
              // initialPage: 0,
              // reverse: false,
              // autoPlayInterval: Duration(
              // seconds: 3,
              // ),
              // enableInfiniteScroll: false,
              // autoPlayAnimationDuration: Duration(microseconds: 300),
              // enlargeCenterPage: true,
              // scrollDirection: Axis.horizontal));
            },
          ),
        ),

        Expanded(
                         child: Padding(
                         padding: EdgeInsets.all(5.0),

                  child: FutureBuilder(
                   future: Aproduct.ApiProduct(),
                   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                       return (snapshot.data == null)
                     ? Text('') :

                     StaggeredGridView.countBuilder(
                         crossAxisCount: 2,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                             onTap: () {
                               Navigator.push(context, CupertinoPageRoute(
                                  builder: (BuildContext context) {
                                    return ProductPage(
                                      avatar: '${snapshot.data[index].avatar}',
                                        id: '${snapshot.data[index].id}',
                                        name: '${snapshot.data[index].name}',
                                        title: '${snapshot.data[index].title}',
                                        description: '${snapshot.data[index].description}',
                                        discount: '${snapshot.data[index].discount}',
                                        in_stock: '${snapshot.data[index].in_stock}',
                                        price_final_text: '${snapshot.data[index].price_final_text}',
                                   );
                                  }));
                            },
                             child: Stack(
                                 alignment: Alignment.bottomCenter,
                                                children: [
                                                  Image.network(
                                                    '${snapshot.data[index].avatar}',
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Card(

                                                    color: appBarColoc.withOpacity(0.5),
                                                    child: Container(


                                                      alignment: Alignment.bottomCenter,

                                                      child: Text(
                                                        "${snapshot.data[index].title}",

                                                        style: TextStyle(
                                                            color: backGround, fontWeight: FontWeight.bold, fontSize: 15,
                                                        ),
                                                        textAlign: TextAlign.center,
                                                      ),
                                                    ),
                                                  )
                             ]),

                           );
                         },
                        staggeredTileBuilder: (int index) =>
                        new StaggeredTile.fit(1),

                      );
                     }),

                        )
                         )


    ],
    )
    );

    }}

