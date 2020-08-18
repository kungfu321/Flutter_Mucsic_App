import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final String title;
  final String thumbnail;
  final String albumName;
  final String artistName;
  final String albumSongCount;
  final Function onTap;

  const AlbumCard({
    this.title,
    this.thumbnail,
    this.albumName,
    this.artistName,
    this.albumSongCount,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title),
        Divider(),
        InkWell(
          onTap: () {
            onTap();
          },
          child: Row(
            children: [
              Image.asset(
                thumbnail,
                width: 70,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    albumName,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "$artistName • $albumSongCount",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              )
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
