import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        // 主轴对齐方式
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // 交叉轴对齐方式
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          StackDemo(),
          IconBadge(Icons.poll),
          IconBadge(Icons.beach_access),
          IconBadge(Icons.airplanemode_active),
          AspectRatio(
            aspectRatio: 5.0/2.0,
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 200.0,
              minWidth: 100.0,
              maxHeight: 100.0,
              minHeight: 50.0
            ),
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      )
      // child: Row(
      //   children: <Widget>[
      //     IconBadge(Icons.poll),
      //     IconBadge(Icons.beach_access),
      //     IconBadge(Icons.airplanemode_active),
      //   ],
      // ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.topRight,
      children: <Widget>[
        SizedBox(
          width: 100.0,
          height: 80.0,
          child: Container(
            alignment: Alignment(1.0, 1.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1),
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        SizedBox(
          width: 60.0,
          height: 80.0,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1),
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(3, 54, 255, 1),
                  Color.fromRGBO(7, 102, 255, 1),
                ]
              )
            ),
            child: Icon(Icons.school, color: Colors.white, size: 32.0,),
          ),
        ),
        Positioned(
          top: 10.0,
          right: 10.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0,),
        )
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  IconBadge(this.icon, {
    this.size = 32.0
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white,),
      width: 60 + size,
      height: 60 + size,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}