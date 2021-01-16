import 'package:flutter/material.dart';
import 'package:music_player_ui/widgets/widgets.dart';

class MusicPlayer extends StatelessWidget {
  final padding = EdgeInsets.all(40);
  final marginTop = EdgeInsets.only(top: 20);
  final SizedBox vertSpace20 = SizedBox(height: 20);
  final SizedBox vertSpace10 = SizedBox(height: 10);

  //Device Height
  double deviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  //Device Width
  double deviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  final iconColors = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8A0000),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          body(context),
          bottomNav(
              dimension: deviceHeight,
              context: context,
              color: iconColors,
              textOne: 'UP NEXT',
              textTwo: 'LYRICS',
              textThree: 'RELATED')
        ],
      ),
    );
  }

//The Body widget to modularize the Stack above
  Widget body(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: padding,
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_drop_down,
                  color: iconColors,
                ),
                toggler(),
                Icon(
                  Icons.more_vert,
                  color: iconColors,
                ),
              ],
            ),
          ),
          SizedBox(
            height: deviceHeight(context) * .13,
          ),
          Container(
            height: deviceHeight(context) * .3,
            width: deviceWidth(context) * .8,
            color: iconColors,
          ),
          vertSpace20,
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.thumb_down_alt_outlined,
                      color: iconColors,
                    ),
                    Text(
                      'Target You (feat. Syneca)',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: iconColors),
                    ),
                    Icon(
                      Icons.thumb_up_alt_outlined,
                      color: iconColors,
                    ),
                  ],
                ),
                vertSpace10,
                Text(
                  '2Baba',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey),
                ),
                vertSpace20,
                controllerWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
