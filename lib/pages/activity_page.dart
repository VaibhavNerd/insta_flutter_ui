import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_flutter/theme/colors.dart';
import 'package:insta_flutter/util/Activity_json.dart';
import 'package:insta_flutter/util/story_json.dart';


class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: getAppBar(size),
      body: getBody(size),


    );
  }
}
Widget getAppBar(size) {
    return
       PreferredSize(
     preferredSize: Size.fromHeight(60),
    child: Container(
      alignment: Alignment.centerLeft,
      child :  Padding(padding:  EdgeInsets.only(left: 20,bottom: 10,top: 40),


        child : Text("Activity",
      style: TextStyle( fontWeight : FontWeight.w700, fontSize :22 ),
    ),

      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: Offset(2, 4), // Shadow position
          ),
        ],
      ),
  ),
  );

}

Widget getBody(size) {
  return ListView(
      children:[   Padding(padding: EdgeInsets.only(top: 20,left: 15),
        child : Text("Today",
          style: TextStyle( fontWeight : FontWeight.w500, fontSize :20 ),
        ),
                  ),
        Padding(padding:EdgeInsets.only(top: 10,left: 10) ,
         child :
            Column(
       mainAxisAlignment: MainAxisAlignment.start,

      children: List.generate(activity.length, (index) {
        return Column( mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children : [
              Row ( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


          Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children : [
                Container(
                  decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: bgStoryColors),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: bgWhite),
                  image: DecorationImage(
                      image: NetworkImage(activity[index]['imageUrl']),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),

        ),
         SizedBox(width: 10,),
         Text("${activity[index]['username']} ",
         style: TextStyle(fontWeight:FontWeight.w800),),
          Text(activity[index]['content'],
          style: TextStyle(fontWeight:FontWeight.w400),),
        ]

          ),
        Padding(padding: EdgeInsets.only(right:20),
             child:
             activity[index]['isFollow']
                   ?Container(
                    alignment: Alignment.center,
                      height: 28,
                      width: 60,

                      child:
                        Text("Follow",
                          style:TextStyle(color: Colors.white) ),
                      decoration: BoxDecoration(
                        color: Colors.blue,

                          border: Border.all(width: 1, color: bgWhite),
                         borderRadius: BorderRadius.all( Radius.circular(5)),

                          )
                      )
            :Container(
                 alignment: Alignment.center,
                 height: 28,
                 width: 80,

                 child:
                 Text("Following",
                     style:TextStyle(color: Colors.black87) ),
                 decoration: BoxDecoration(
                   color: Colors.white,

                   border: Border.all(width: 1, color: Colors.black12),
                   borderRadius: BorderRadius.all( Radius.circular(5)),
                 )
             )
                    ),

          ]

        ),

              new Container(
                height: 10.0,
                width: size.width*0.9,
                color: bgLightGrey,
              ),
        ]
        );

      }),

   ),

        ),
        Divider(),

        Padding(padding: EdgeInsets.only(top: 2,left: 15),
          child : Text("This week",
            style: TextStyle( fontWeight : FontWeight.w500, fontSize :20 ),
          ),
        ),
        Padding(padding:EdgeInsets.only(top: 10,left: 10) ,
          child :
          Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: List.generate(activity.length, (index) {
              return Column( mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children : [
                    Row ( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [


                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,

                              children : [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(colors: bgStoryColors),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(width: 2, color: bgWhite),
                                          image: DecorationImage(
                                              image: NetworkImage(activity[index]['imageUrl']),
                                              fit: BoxFit.cover
                                          )
                                      ),
                                    ),
                                  ),

                                ),
                                SizedBox(width: 10,),
                                Text("${activity[index]['username']} ",
                                  style: TextStyle(fontWeight:FontWeight.w800),),
                                Text(activity[index]['content'],
                                  style: TextStyle(fontWeight:FontWeight.w400),),
                              ]

                          ),
                          Padding(padding: EdgeInsets.only(right:20),
                              child:
                              activity[index]['isFollow']
                                  ?Container(
                                  alignment: Alignment.center,
                                  height: 28,
                                  width: 60,

                                  child:
                                  Text("Follow",
                                      style:TextStyle(color: Colors.white) ),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,

                                    border: Border.all(width: 1, color: bgWhite),
                                    borderRadius: BorderRadius.all( Radius.circular(5)),

                                  )
                              )
                                  :Container(
                                  alignment: Alignment.center,
                                  height: 28,
                                  width: 80,

                                  child:
                                  Text("Following",
                                      style:TextStyle(color: Colors.black87) ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,

                                    border: Border.all(width: 1, color: Colors.black12),
                                    borderRadius: BorderRadius.all( Radius.circular(5)),
                                  )
                              )
                          ),

                        ]

                    ),
                    new Container(
                      height: 10.0,
                      width: size.width*0.9,
                      color: bgLightGrey,
                    ),
                  ]
              );

            }),

          ),
        ),
        Divider(),
        Padding(padding: EdgeInsets.only(top: 2,left: 15),
          child : Text("Earlier",
            style: TextStyle( fontWeight : FontWeight.w500, fontSize :20 ),
          ),
        ),
        Padding(padding:EdgeInsets.only(top: 10,left: 10) ,
          child :
          Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: List.generate(activity.length, (index) {
              return Column( mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children : [
                    Row ( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [


                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,

                              children : [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(colors: bgStoryColors),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(width: 2, color: bgWhite),
                                          image: DecorationImage(
                                              image: NetworkImage(activity[index]['imageUrl']),
                                              fit: BoxFit.cover
                                          )
                                      ),
                                    ),
                                  ),

                                ),
                                SizedBox(width: 10,),
                                Text("${activity[index]['username']} ",
                                  style: TextStyle(fontWeight:FontWeight.w800),),
                                Text(activity[index]['content'],
                                  style: TextStyle(fontWeight:FontWeight.w400),),
                              ]

                          ),
                          Padding(padding: EdgeInsets.only(right:20),
                              child:
                              activity[index]['isFollow']
                                  ?Container(
                                  alignment: Alignment.center,
                                  height: 28,
                                  width: 60,

                                  child:
                                  Text("Follow",
                                      style:TextStyle(color: Colors.white) ),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,

                                    border: Border.all(width: 1, color: bgWhite),
                                    borderRadius: BorderRadius.all( Radius.circular(5)),

                                  )
                              )
                                  :Container(
                                  alignment: Alignment.center,
                                  height: 28,
                                  width: 80,

                                  child:
                                  Text("Following",
                                      style:TextStyle(color: Colors.black87) ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,

                                    border: Border.all(width: 1, color: Colors.black12),
                                    borderRadius: BorderRadius.all( Radius.circular(5)),
                                  )
                              )
                          ),

                        ]

                    ),
                    new Container(
                      height: 10.0,
                      width: size.width*0.9,
                      color: bgLightGrey,
                    ),
                  ]
              );

            }),

          ),
        ),
        Divider(),
  ]
  );
      }
