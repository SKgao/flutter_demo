import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://img3.doubanio.com/img/files/file-1557376620-0.jpg'),
          alignment: Alignment.topCenter,
          repeat: ImageRepeat.noRepeat,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.8),
            BlendMode.hardLight
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 90.0,
            height: 90.0,
            // color: Color.fromRGBO(3, 54, 255, 0.8),
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 0.8),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.circular(16.0),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(32.0),
              //   bottomRight: Radius.circular(32.0)
              // )
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0, 5.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 2.0,
                  spreadRadius: -2.0
                )
              ],
              // 圆形盒子不能使用圆角属性
              shape: BoxShape.rectangle,
              // 径向渐变
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(2, 10, 100, 1.0),
              //     Color.fromRGBO(8, 80, 240, 1.0)
              //   ]
              // ),
              // 线性渐变
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(2, 10, 100, 1.0),
                  Color.fromRGBO(8, 80, 240, 1.0)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.only(
              left: 24.0,
              right: 8.0,
              top: 10.0,
              bottom: 10.0
            ),
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Zoro...',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 32.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w800
        ),
        children: [
          TextSpan(
            text: 'flutter',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black38,
            )
          )
        ]
      )
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = TextStyle(
      color: Colors.black12,
      fontSize: 16.0,
    );

    final String _title = '将进酒';
    final String _author = '李白';

    return Text(
      '''
      《 $_title 》-- $_author。
      君不见，黄河之水天上来，奔流到海不复回。
      君不见，高堂明镜悲白发，朝如青丝暮成雪。
      人生得意须尽欢，莫使金樽空对月。
      天生我材必有用，千金散尽还复来。
      烹羊宰牛且为乐，会须一饮三百杯。
      岑夫子，丹丘生，将进酒，杯莫停。
      ''',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 6,
      overflow: TextOverflow.ellipsis
    );
  }
}