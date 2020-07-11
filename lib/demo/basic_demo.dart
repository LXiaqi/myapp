import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'http://i0.hdslb.com/bfs/article/dfd5db8d5af301392285e689ac5521a987827a3e.jpg'),
              alignment: Alignment.topCenter,
              fit: BoxFit.cover)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.pink,
            ),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(16.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(color: Colors.indigoAccent[100]),
              // borderRadius: BorderRadius.circular(50.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0, 7.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0,
                )
              ],
              shape: BoxShape.circle,
              // 镜像渐变
              // gradient: RadialGradient(colors: [
              //   Color.fromRGBO(7, 102, 255, 1.0),
              //   Color.fromRGBO(3, 28, 128, 0.8)
              // ],
              //线性渐变
              gradient: LinearGradient(colors: [
                Color.fromRGBO(7, 102, 255, 1.0),
                Color.fromRGBO(3, 28, 128, 0.8)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          )
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 18.0);
  final String _author = "李白";
  final String _title = "将进酒";
  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》--（$_author） 君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。钟鼓馔玉不足贵，但愿长醉不复醒。古来圣贤皆寂寞，惟有饮者留其名。陈王昔时宴平乐，斗酒十千恣欢谑。主人何为言少钱，径须沽取对君酌。五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  final String _author = "苏轼";
  final String _title = "定风波";
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: '《$_title》--（$_author）',
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 24.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
          children: [
            TextSpan(
                text:
                    '莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。料峭春风吹酒醒，微冷，山头斜照却相迎。回首向来萧瑟处，归去，也无风雨也无晴',
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.orange,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w300))
          ]),
    );
  }
}
