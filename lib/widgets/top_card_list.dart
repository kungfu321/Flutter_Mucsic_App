import 'package:flutter/material.dart';

class TopCardList extends StatelessWidget {
  final String text;
  final String subText;
  final String title;
  final String thumbnail;

  const TopCardList(
      {Key key, this.text, this.subText, this.title, this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)),
                  image: DecorationImage(
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.plus),
                      image: AssetImage(thumbnail))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    subText,
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                ],
              )),
          Container(
            padding: EdgeInsets.fromLTRB(12, 20, 12, 20),
            alignment: Alignment.centerLeft,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(6),
                    bottomRight: Radius.circular(6))),
            child: Text(title),
          )
        ],
      ),
    );
  }
}
