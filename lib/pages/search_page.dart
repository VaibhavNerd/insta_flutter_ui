
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:flutter_svg/svg.dart';
import 'package:insta_flutter/theme/colors.dart';
import 'package:insta_flutter/util/account_images_json.dart';
import 'package:insta_flutter/util/new_feed_json.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: getAppBar(size),
      body: getBody(size),

    );
  }
  Widget getAppBar(size) {

    return PreferredSize(
      preferredSize: Size.fromHeight(45),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
           child:Column (
            children : [
             Container(
               width: (size.width)*0.9,

              child: Padding(padding: EdgeInsets.only(left: 10 ,right:10 ,bottom: 2),

               child: Row(

                 mainAxisAlignment: MainAxisAlignment.start,
                 children: <Widget>[Icon(Icons.search),
               SizedBox(width: 20), // give it width
               Text("search",
                   style: TextStyle(color: Colors.black.withOpacity(0.5)) ),
             ],
           ),
           ),
             decoration: BoxDecoration(

               borderRadius:BorderRadius.all(Radius.circular(20)) ,
               color:(Color(0xffdbdbdb)),
             ),

           ),
           Spacer(),
              Container(

                padding: EdgeInsets.all(20),
                width: size.width,
                height: 1,
                color: Colors.black,
              )
             ]
           ),
               //Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //
          //     IconButton(
          //         splashRadius: 15,
          //         icon: Icon(Icons.search),
          //         onPressed: () {}
          //     ),
          //     Text( "search", )
          //   ],
          // ),
        ),
      ),
    );
  }
  Widget getBody(size) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),


        ),

        Container(
            child : getImages(size),
        )
        // IndexedStack(
        //   index: 0,
        //   children: [
        //     getImages(size),
        //
        //   ],
        // ),
      ],
    );
  }

  Widget getImages(size) {
    return Wrap(
        direction: Axis.horizontal,
        spacing: 3,
        runSpacing: 3,
        children: List.generate(images.length, (index) {
          return Container(
            height: 150,
            width: (size.width - 6) / 3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(images[index]),
                    fit: BoxFit.cover
                )
            ),
          );
        })
    );
  }



}