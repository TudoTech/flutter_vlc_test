// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'multiple_tab.dart';
import 'single_tab.dart';
//
//
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
class VLCPlayerTest extends StatefulWidget {
  @override
  VLCPlayerState createState() => VLCPlayerState();
}

// class VLCPlayerState extends State<VLCPlayerTest> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class VLCPlayerState extends State<VLCPlayerTest> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('View Live BroadCast'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Single'),
              Tab(text: 'Multiple'),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            SingleTab(),
            MultipleTab(),
          ],
        ),
      ),
    );
  }
}