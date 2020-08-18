import 'package:Flutter_Mucsic_App/widgets/album_card.dart';
import 'package:Flutter_Mucsic_App/widgets/top_card_list.dart';
import 'package:flutter/material.dart';

class BrowseScreen extends StatefulWidget {
  @override
  _BrowseScreenState createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0xFFF2F2F2),
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(26),
                child: Row(
                  children: <Widget>[
                    TopCardList(
                        text: "TOP",
                        subText: "HITS",
                        title: "Todays Top Hits",
                        thumbnail: "assets/images/todays_top_hits.png"),
                    TopCardList(
                        text: "VIRAL",
                        subText: "HITS",
                        title: "Viral Hits",
                        thumbnail: "assets/images/viral_hits.png"),
                    TopCardList(
                        text: "CHILL",
                        subText: "HITS",
                        title: "Chill Hits",
                        thumbnail: "assets/images/todays_top_hits.png")
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: AlbumCard(
                  title: "FEATURED ALBUM",
                  thumbnail: "assets/images/featured_album.png",
                  albumName: "Bahamas is Afie",
                  artistName: "Bahamas",
                  albumSongCount: "12 songs",
                  onTap: () {
                    print("Show album detail");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
