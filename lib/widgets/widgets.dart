import 'package:flutter/material.dart';

Widget toggler() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Colors.black54,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.red,
          ),
          child: Center(
            child: Text(
              "Song",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Center(
            child: Text(
              "Video",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        )
      ],
    ),
  );
}

Widget bottomNav(
    {Function dimension, context, color, textOne, textTwo, textThree}) {
  return Container(
    width: dimension(context),
    height: dimension(context) * .07,
    color: Colors.redAccent,
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 5,
          width: 50,
          color: color,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Text(
                textOne,
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w700, color: color),
              ),
            ),
            Container(
              child: Text(
                textTwo,
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w700, color: color),
              ),
            ),
            Container(
              child: Text(
                textThree,
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w700, color: color),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget controllerWidget() {
  return Container(
    child: Column(
      children: [
        Slider(
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            value: 20,
            min: 0,
            max: 100,
            divisions: 100,
            label: 'music',
            onChanged: (double value) {}),
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "0:31",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              Text(
                "4:31",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.shuffle,
              color: Colors.white,
            ),
            Icon(
              Icons.fast_rewind,
              color: Colors.white,
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.redAccent,
                  size: 70,
                ),
                Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ],
            ),
            Icon(
              Icons.fast_forward,
              color: Colors.white,
            ),
            Icon(
              Icons.repeat,
              color: Colors.white,
            ),
          ],
        )
      ],
    ),
  );
}
