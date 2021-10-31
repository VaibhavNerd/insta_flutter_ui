
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
      appBar: getAppBar(),
      body: getBody(size),
    );
  }
  Widget getAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(55),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              IconButton(
                  splashRadius: 15,
                  icon: Icon(Icons.search),
                  onPressed: () {}
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget getBody(size) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child:
            Container(
              height: 0.5,
              width: size.width,
              decoration: BoxDecoration(color: bgGrey.withOpacity(0.8)),
            ),

        ),
        SizedBox(height: 3),
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

  Widget getImageWithTags(size) {
    return Wrap(
        direction: Axis.horizontal,
        spacing: 3,
        runSpacing: 3,
        children: List.generate(imageWithTags.length, (index) {
          return Container(
            height: 150,
            width: (size.width - 6) / 3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imageWithTags[index]),
                    fit: BoxFit.cover
                )
            ),
          );
        })
    );
  }

}